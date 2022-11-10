# redhat - install gui
dnf group list

dnf groupinstall workstation

systemctl set-default graphical.target

systemctl isolate graphical.target


sed -i "s/127.0.0.1/192.168.120.129/g"standalone.xml
cd /opt/jboss-eap/bin/
nohup ./standalone.sh --server-config standalone.xml &

ps -ef | grep java
tail -f nohup.out
kill -9 21160
ps -ef | grep java

<subsystem xmlns="urn:jboss:domain:undertow:1.1">
   <handlers>
   . . . .
   <reverse-proxy name="myproxy">
    <host name="http://192.168.0.2/myapp-develop"/>
   </reverse-proxy>
   </handlers>
</subsystem>

<host name="default-host" alias="localhost">
    . . .
   <location name="/myapp-stable" handler="myproxy"/>
</host>
