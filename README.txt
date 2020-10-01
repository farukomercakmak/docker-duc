#Debian, Ubuntu ve CentOS Repolarını Docker ile Aynalama

Bu projede Debian 9/Stretch - 10/Buster, Ubuntu 18.04/Bionic - 20.04/Focal ve Centos 7/8 repoları Docker ile aynalanarak sunulmaktadır.

##Docker ve Docker Compose Kurulum

Debian 10 sunucu üzerinde;

  sudo su

  apt update -y
  
  apt install docker docker-compose -y

komutları ile kurulum yapılır.

##Paketlerin Tutulacağı Alan

Sunucu üzerinde /repo dizini oluşturarak ilerledim. Docker ayağa kalkınca bu dizini bağlayarak verileri buraya atacak ve apache buradaki verileri sunacak şekilde ayarladım.

  mkdir /repo

##Temel İmajların Oluşturulması

Debian ve Ubuntu için bir Debian 10 imajı ve CentOS içinde bir CentOS 8 imajı oluşturdum. Bunun için aptmir dizinine giderek;

  cd aptmirr
  docker build -t aptmirr .

aynı şekilde CentOS imajı için;

  cd centmirr
  docker build -t centmirr .

##Mirror Adresleri

mirror.list dosyasında Debian ve Ubuntu repo adresleri, centos7_reposync.sh ve centos8_reposync.sh dosyalarında ise CentOS 7/8 repo adresleri mevcuttur. Farklı bir adresten alınmak istenirse bu dosyaların değişmesi gerekir.

##SSL Ayarları

ssl dizininde sertifikaya ait dosya  örnekleri mevcuttur. Eğer https ile depoyu sunmak isterseniz bu dizin altına sertifika dosyalarını atarak docker-compose.yml dosyasınında kapalı dört satırı aktif etmelisiniz.

##Docker Compose Adımları

Bu adımda;

  docker-compose up

komutu ile  aynalama işlemi başlatılır. Apache 80 portu ile sunuyor, arzu ederseniz docker-compose.yml dosyasından bu ayaları değiştirebilirsiniz.

