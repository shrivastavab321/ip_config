# ip_config
This is a shell script file to configure your device(raspberry pi ) ip address.
How to run
To run this script first you have to download and save in a directory.
$ git clone https://github.com/shrivastavab321/ip_config

Go to the directory in terminal 
$ cd  /pathe/of/ip_configure   

Make the file executable
$ chmod +x ip_config

Now run the command. 
If you want to set static IP address follow this command
$ ./ip_config static ip_addr netmask gateway dns
(pass all the parameters separated with space)

Exp. ./ip static 192.168.80.90 255.255.255.0 192.168.80.255 4.4.4.4 

If you want to set dynamic IP  address.
$ ./ip dhcp
