#permission denied
sed -i '1s/^/x(){ chmod 777 -R \/home\/cabox\/workspace\n}\n\n/' /etc/bashrc

#install sw
sed -i '1s/^/\n\napp(){ yum install $* | tee ./pckgLinux/$*.txt\n}\n\n/' /etc/bashrc

. /etc/bashrc
mkdir ./pckgLinux/
#sudo yum install java-1.7.0-openjdk.x86_64 