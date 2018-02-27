#escrito por alexy mostovik
#atualizar packote
apt-get update -y

apt-get upgrade -y

apt-get install nano -y
#install apache2
apt-get install apache2 -y

#install php
apt-get install php5 libapache2-mod-php5 -y 

#resiniciar apache2
service apache2 restart

#instalar mysql
apt-get install mysql-server -y 

#instalar phpmyadmin
apt-get install php5-mysql phpmyadmin libapache2-mod-auth-mysql -y

#link phpmyadmin apache2
#ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

#chmod 777 -R /var/www/
#ln -s /var/www/ .

#mudando o padrão apache2
sed s/"DocumentRoot \/var\/www\/html"/"DocumentRoot \/home\/cabox\/workspace"/g -i /etc/apache2/sites-enabled/000-default.conf
sed s/"Directory \/var\/www\/"/"Directory \/home\/cabox\/workspace"/g -i /etc/apache2/apache2.conf
echo "<?php
phpinfo();
?>
" > info.php

#instalando lamp
#apt-get install lamp^ phpmyadmin -y


#instalando xampp
#sudo add-apt-repository ppa:upubuntu-com/web -y
#apt-get update -y
#apt-get install xampp -y
#sudo /opt/lampp/lampp start