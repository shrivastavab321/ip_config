#!/usr/bin/bash

cmnd=$1
ip_addr=$2
ntmsk=$3
gtw=$4
dns=$5

function test_file(){
FILE=/etc/network/interfaces

if test -f $FILE 
then 
   return 0
else 
   return 1
fi

}

function dhcp(){

  if test_file;
   then
       rm /etc/network/interfaces

       echo "dhcp set"
   else
       echo "dhcp already set"

   fi



}


function static()

{

                if test_file;
                then
                  rm  /etc/network/interfaces

                fi
     
                touch /etc/network/interfaces
                echo "source /etc/network/interfaces.d/*">> /etc/network/interfaces
                echo "auto eth0" >> /etc/network/interfaces
                
                echo "iface eth0 inet static">> /etc/network/interfaces
                echo "netmask "$ntmsk>>/etc/network/interfaces

                echo "gateway "$gtw>> /etc/network/interfaces

                echo "dns-nameservers "$dns>>/etc/network/interfaces

                echo "address "$ip_addr>>/etc/network/interfaces
echo "done"
echo 'static' 

echo 'ip is'$ip_addr
echo 'netmask'$ntmsk
echo 'gateway'$gtw
echo 'dns-nameserver'$dns 
}


function  set_ip()

{

case $cmnd in
"static")
    static;;
   

"dhcp")
    dhcp;;

esac
}



set_ip
