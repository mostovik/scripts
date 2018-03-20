#echo "[yandex]
#name=Yandex
#failovermethod=priority
#baseurl=http://repo.yandex.ru/yandex-disk/rpm/stable/$basearch/
#enabled=1
#metadata_expire=1d
#gpgcheck=1
#gpgkey=http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG" >> /etc/yum.repos.d/yandex.repo

#touch /etc/yum.repos.d/yandex.repo
#rpm --import http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG
#yum install yandex-disk

#wget https://github.com/slytomcat/yandex-disk-indicator/archive/1.9.18.zip
wget http://repo.yandex.ru/yandex-disk/yandex-disk-latest.x86_64.rpm
rpm -i yandex-disk-latest.x86_64.rpm
yandex-disk setup