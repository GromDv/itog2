##########################################################################
# 1. Используя команду cat в терминале операционной системы Linux, создать
# два файла Домашние животные (заполнив файл собаками, кошками,
# хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и
# ослы), а затем объединить их. Просмотреть содержимое созданного файла.
# Переименовать файл, дав ему новое имя (Друзья человека).

mss@mssvm:~$ cat >  home_animals
dog,cat,hamster
mss@mssvm:~$ cat > pack_animals
horse,camel,donkey
mss@mssvm:~$ cat home_animals pack_animals > common_animals
mss@mssvm:~$ cat common_animals 
dog,cat,hamster
horse,camel,donkey
mss@mssvm:~$~/Documents/GB/ИКР$ mv common_animals human_friends

###########################################################################
# 2. Создать директорию, переместить файл туда.

mss@mssvm:~$ mkdir animals
mss@mssvm:~$ mv human_friends animals/

###########################################################################
# 3. Подключить дополнительный репозиторий MySQL. Установить любой пакет
# из этого репозитория.

mss@mssvm:~$ wget http://repo.mysql.com/mysql-apt-config_0.8.26-1_all.deb 
--2023-07-23 16:33:02--  http://repo.mysql.com/mysql-apt-config_0.8.26-1_all.deb
Resolving repo.mysql.com (repo.mysql.com)... 23.40.124.234
Connecting to repo.mysql.com (repo.mysql.com)|23.40.124.234|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 18088 (18K) [application/x-debian-package]
Saving to: ‘mysql-apt-config_0.8.26-1_all.deb’
mysql-apt-config_0.8.26-1_all.deb    100%[=====================================================================>]  17.66K  --.-KB/s    in 0.009s  
2023-07-23 16:33:03 (1.89 MB/s) - ‘mysql-apt-config_0.8.26-1_all.deb’ saved [18088/18088]

mss@mssvm:~$ sudo dpkg -i mysql-apt-config_0.8.26-1_all.deb
Selecting previously unselected package mysql-apt-config.
(Reading database ... 181478 files and directories currently installed.)
Preparing to unpack mysql-apt-config_0.8.26-1_all.deb ...
Unpacking mysql-apt-config (0.8.26-1) ...
Setting up mysql-apt-config (0.8.26-1) ...

mss@mssvm:~$ sudo apt update
Hit:1 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:2 https://download.docker.com/linux/ubuntu jammy InRelease               
Hit:3 http://repo.mysql.com/apt/ubuntu jammy InRelease                       
Hit:4 http://ke.archive.ubuntu.com/ubuntu jammy InRelease
Hit:5 http://ke.archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:6 http://ke.archive.ubuntu.com/ubuntu jammy-backports InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
4 packages can be upgraded. Run 'apt list --upgradable' to see them.

mss@mssvm:~$ sudo apt install mysql-server-8.0
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer required:
  libmariadb3 mariadb-common
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  libaio1 libcgi-fast-perl libcgi-pm-perl libevent-core-2.1-7 libevent-pthreads-2.1-7 libfcgi-bin libfcgi-perl libfcgi0ldbl libhtml-template-perl
  libmecab2 libprotobuf-lite23 mecab-ipadic mecab-ipadic-utf8 mecab-utils mysql-client-8.0 mysql-client-core-8.0 mysql-server-core-8.0
Suggested packages:
  libipc-sharedcache-perl mailx tinyca
The following packages will be REMOVED:
  mariadb-client-core-10.6
The following NEW packages will be installed:
  libaio1 libcgi-fast-perl libcgi-pm-perl libevent-core-2.1-7 libevent-pthreads-2.1-7 libfcgi-bin libfcgi-perl libfcgi0ldbl libhtml-template-perl
  libmecab2 libprotobuf-lite23 mecab-ipadic mecab-ipadic-utf8 mecab-utils mysql-client-8.0 mysql-client-core-8.0 mysql-server-8.0
  mysql-server-core-8.0
0 upgraded, 18 newly installed, 1 to remove and 4 not upgraded.
Need to get 29.3 MB of archives.
After this operation, 230 MB of additional disk space will be used.
Do you want to continue? [Y/n] 
Get:1 http://ke.archive.ubuntu.com/ubuntu jammy-updates/main amd64 mysql-client-core-8.0 amd64 8.0.33-0ubuntu0.22.04.2 [2,802 kB]
Get:2 http://ke.archive.ubuntu.com/ubuntu jammy-updates/main amd64 mysql-client-8.0 amd64 8.0.33-0ubuntu0.22.04.2 [22.7 kB]
Get:3 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libaio1 amd64 0.3.112-13build1 [7,176 B]                                               
Get:4 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libevent-core-2.1-7 amd64 2.1.12-stable-1build3 [93.9 kB]                              
Get:5 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libevent-pthreads-2.1-7 amd64 2.1.12-stable-1build3 [7,642 B]                          
Get:6 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libmecab2 amd64 0.996-14build9 [199 kB]                                                
Get:7 http://ke.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libprotobuf-lite23 amd64 3.12.4-1ubuntu7.22.04.1 [209 kB]                      
Get:8 http://ke.archive.ubuntu.com/ubuntu jammy-updates/main amd64 mysql-server-core-8.0 amd64 8.0.33-0ubuntu0.22.04.2 [17.5 MB]                  
Get:9 http://ke.archive.ubuntu.com/ubuntu jammy-updates/main amd64 mysql-server-8.0 amd64 8.0.33-0ubuntu0.22.04.2 [1,431 kB]                      
Get:10 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libcgi-pm-perl all 4.54-1 [188 kB]                                                    
Get:11 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libfcgi0ldbl amd64 2.4.2-2build2 [28.0 kB]                                            
Get:12 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libfcgi-perl amd64 0.82+ds-1build1 [22.8 kB]                                          
Get:13 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libcgi-fast-perl all 1:2.15-1 [10.5 kB]                                               
Get:14 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libfcgi-bin amd64 2.4.2-2build2 [11.2 kB]                                             
Get:15 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 libhtml-template-perl all 2.97-1.1 [59.1 kB]                                          
Get:16 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 mecab-utils amd64 0.996-14build9 [4,850 B]                                            
Get:17 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 mecab-ipadic all 2.7.0-20070801+main-3 [6,718 kB]                                     
Get:18 http://ke.archive.ubuntu.com/ubuntu jammy/main amd64 mecab-ipadic-utf8 all 2.7.0-20070801+main-3 [4,384 B]                                 
Fetched 29.3 MB in 36s (808 kB/s)                                                                                                                 
Preconfiguring packages ...
(Reading database ... 181483 files and directories currently installed.)
Removing mariadb-client-core-10.6 (1:10.6.12-0ubuntu0.22.04.1) ...
Selecting previously unselected package mysql-client-core-8.0.
(Reading database ... 181471 files and directories currently installed.)
Preparing to unpack .../00-mysql-client-core-8.0_8.0.33-0ubuntu0.22.04.2_amd64.deb ...
Unpacking mysql-client-core-8.0 (8.0.33-0ubuntu0.22.04.2) ...
Selecting previously unselected package mysql-client-8.0.
Preparing to unpack .../01-mysql-client-8.0_8.0.33-0ubuntu0.22.04.2_amd64.deb ...
Unpacking mysql-client-8.0 (8.0.33-0ubuntu0.22.04.2) ...
Selecting previously unselected package libaio1:amd64.
Preparing to unpack .../02-libaio1_0.3.112-13build1_amd64.deb ...
Unpacking libaio1:amd64 (0.3.112-13build1) ...
Selecting previously unselected package libevent-core-2.1-7:amd64.
Preparing to unpack .../03-libevent-core-2.1-7_2.1.12-stable-1build3_amd64.deb ...
Unpacking libevent-core-2.1-7:amd64 (2.1.12-stable-1build3) ...
Selecting previously unselected package libevent-pthreads-2.1-7:amd64.
Preparing to unpack .../04-libevent-pthreads-2.1-7_2.1.12-stable-1build3_amd64.deb ...
Unpacking libevent-pthreads-2.1-7:amd64 (2.1.12-stable-1build3) ...
Selecting previously unselected package libmecab2:amd64.
Preparing to unpack .../05-libmecab2_0.996-14build9_amd64.deb ...
Unpacking libmecab2:amd64 (0.996-14build9) ...
Selecting previously unselected package libprotobuf-lite23:amd64.
Preparing to unpack .../06-libprotobuf-lite23_3.12.4-1ubuntu7.22.04.1_amd64.deb ...
Unpacking libprotobuf-lite23:amd64 (3.12.4-1ubuntu7.22.04.1) ...
Selecting previously unselected package mysql-server-core-8.0.
Preparing to unpack .../07-mysql-server-core-8.0_8.0.33-0ubuntu0.22.04.2_amd64.deb ...
Unpacking mysql-server-core-8.0 (8.0.33-0ubuntu0.22.04.2) ...
Selecting previously unselected package mysql-server-8.0.
Preparing to unpack .../08-mysql-server-8.0_8.0.33-0ubuntu0.22.04.2_amd64.deb ...
Unpacking mysql-server-8.0 (8.0.33-0ubuntu0.22.04.2) ...
Selecting previously unselected package libcgi-pm-perl.
Preparing to unpack .../09-libcgi-pm-perl_4.54-1_all.deb ...
Unpacking libcgi-pm-perl (4.54-1) ...
Selecting previously unselected package libfcgi0ldbl:amd64.
Preparing to unpack .../10-libfcgi0ldbl_2.4.2-2build2_amd64.deb ...
Unpacking libfcgi0ldbl:amd64 (2.4.2-2build2) ...
Selecting previously unselected package libfcgi-perl:amd64.
Preparing to unpack .../11-libfcgi-perl_0.82+ds-1build1_amd64.deb ...
Unpacking libfcgi-perl:amd64 (0.82+ds-1build1) ...
Selecting previously unselected package libcgi-fast-perl.
Preparing to unpack .../12-libcgi-fast-perl_1%3a2.15-1_all.deb ...
Unpacking libcgi-fast-perl (1:2.15-1) ...
Selecting previously unselected package libfcgi-bin.
Preparing to unpack .../13-libfcgi-bin_2.4.2-2build2_amd64.deb ...
Unpacking libfcgi-bin (2.4.2-2build2) ...
Selecting previously unselected package libhtml-template-perl.
Preparing to unpack .../14-libhtml-template-perl_2.97-1.1_all.deb ...
Unpacking libhtml-template-perl (2.97-1.1) ...
Selecting previously unselected package mecab-utils.
Preparing to unpack .../15-mecab-utils_0.996-14build9_amd64.deb ...
Unpacking mecab-utils (0.996-14build9) ...
Selecting previously unselected package mecab-ipadic.
Preparing to unpack .../16-mecab-ipadic_2.7.0-20070801+main-3_all.deb ...
Unpacking mecab-ipadic (2.7.0-20070801+main-3) ...
Selecting previously unselected package mecab-ipadic-utf8.
Preparing to unpack .../17-mecab-ipadic-utf8_2.7.0-20070801+main-3_all.deb ...
Unpacking mecab-ipadic-utf8 (2.7.0-20070801+main-3) ...
Setting up libmecab2:amd64 (0.996-14build9) ...
Setting up mysql-client-core-8.0 (8.0.33-0ubuntu0.22.04.2) ...
Setting up libfcgi0ldbl:amd64 (2.4.2-2build2) ...
Setting up libcgi-pm-perl (4.54-1) ...
Setting up libfcgi-bin (2.4.2-2build2) ...
Setting up libhtml-template-perl (2.97-1.1) ...
Setting up libprotobuf-lite23:amd64 (3.12.4-1ubuntu7.22.04.1) ...
Setting up mecab-utils (0.996-14build9) ...
Setting up libevent-core-2.1-7:amd64 (2.1.12-stable-1build3) ...
Setting up mysql-client-8.0 (8.0.33-0ubuntu0.22.04.2) ...
Setting up libfcgi-perl:amd64 (0.82+ds-1build1) ...
Setting up libaio1:amd64 (0.3.112-13build1) ...
Setting up libevent-pthreads-2.1-7:amd64 (2.1.12-stable-1build3) ...
Setting up mecab-ipadic (2.7.0-20070801+main-3) ...
Compiling IPA dictionary for Mecab.  This takes long time...
reading /usr/share/mecab/dic/ipadic/unk.def ... 40
emitting double-array: 100% |###########################################| 
/usr/share/mecab/dic/ipadic/model.def is not found. skipped.
reading /usr/share/mecab/dic/ipadic/Symbol.csv ... 208
reading /usr/share/mecab/dic/ipadic/Noun.name.csv ... 34202
reading /usr/share/mecab/dic/ipadic/Verb.csv ... 130750
reading /usr/share/mecab/dic/ipadic/Postp.csv ... 146
reading /usr/share/mecab/dic/ipadic/Prefix.csv ... 221
reading /usr/share/mecab/dic/ipadic/Noun.others.csv ... 151
reading /usr/share/mecab/dic/ipadic/Interjection.csv ... 252
reading /usr/share/mecab/dic/ipadic/Noun.demonst.csv ... 120
reading /usr/share/mecab/dic/ipadic/Others.csv ... 2
reading /usr/share/mecab/dic/ipadic/Suffix.csv ... 1393
reading /usr/share/mecab/dic/ipadic/Noun.place.csv ... 72999
reading /usr/share/mecab/dic/ipadic/Noun.verbal.csv ... 12146
reading /usr/share/mecab/dic/ipadic/Noun.proper.csv ... 27328
reading /usr/share/mecab/dic/ipadic/Noun.adverbal.csv ... 795
reading /usr/share/mecab/dic/ipadic/Noun.adjv.csv ... 3328
reading /usr/share/mecab/dic/ipadic/Noun.org.csv ... 16668
reading /usr/share/mecab/dic/ipadic/Postp-col.csv ... 91
reading /usr/share/mecab/dic/ipadic/Conjunction.csv ... 171
reading /usr/share/mecab/dic/ipadic/Noun.number.csv ... 42
reading /usr/share/mecab/dic/ipadic/Noun.nai.csv ... 42
reading /usr/share/mecab/dic/ipadic/Filler.csv ... 19
reading /usr/share/mecab/dic/ipadic/Adj.csv ... 27210
reading /usr/share/mecab/dic/ipadic/Noun.csv ... 60477
reading /usr/share/mecab/dic/ipadic/Adnominal.csv ... 135
reading /usr/share/mecab/dic/ipadic/Auxil.csv ... 199
reading /usr/share/mecab/dic/ipadic/Adverb.csv ... 3032
emitting double-array: 100% |###########################################| 
reading /usr/share/mecab/dic/ipadic/matrix.def ... 1316x1316
emitting matrix      : 100% |###########################################| 

done!
update-alternatives: using /var/lib/mecab/dic/ipadic to provide /var/lib/mecab/dic/debian (mecab-dictionary) in auto mode
Setting up libcgi-fast-perl (1:2.15-1) ...
Setting up mysql-server-core-8.0 (8.0.33-0ubuntu0.22.04.2) ...
Setting up mecab-ipadic-utf8 (2.7.0-20070801+main-3) ...
Compiling IPA dictionary for Mecab.  This takes long time...
reading /usr/share/mecab/dic/ipadic/unk.def ... 40
emitting double-array: 100% |###########################################| 
/usr/share/mecab/dic/ipadic/model.def is not found. skipped.
reading /usr/share/mecab/dic/ipadic/Symbol.csv ... 208
reading /usr/share/mecab/dic/ipadic/Noun.name.csv ... 34202
reading /usr/share/mecab/dic/ipadic/Verb.csv ... 130750
reading /usr/share/mecab/dic/ipadic/Postp.csv ... 146
reading /usr/share/mecab/dic/ipadic/Prefix.csv ... 221
reading /usr/share/mecab/dic/ipadic/Noun.others.csv ... 151
reading /usr/share/mecab/dic/ipadic/Interjection.csv ... 252
reading /usr/share/mecab/dic/ipadic/Noun.demonst.csv ... 120
reading /usr/share/mecab/dic/ipadic/Others.csv ... 2
reading /usr/share/mecab/dic/ipadic/Suffix.csv ... 1393
reading /usr/share/mecab/dic/ipadic/Noun.place.csv ... 72999
reading /usr/share/mecab/dic/ipadic/Noun.verbal.csv ... 12146
reading /usr/share/mecab/dic/ipadic/Noun.proper.csv ... 27328
reading /usr/share/mecab/dic/ipadic/Noun.adverbal.csv ... 795
reading /usr/share/mecab/dic/ipadic/Noun.adjv.csv ... 3328
reading /usr/share/mecab/dic/ipadic/Noun.org.csv ... 16668
reading /usr/share/mecab/dic/ipadic/Postp-col.csv ... 91
reading /usr/share/mecab/dic/ipadic/Conjunction.csv ... 171
reading /usr/share/mecab/dic/ipadic/Noun.number.csv ... 42
reading /usr/share/mecab/dic/ipadic/Noun.nai.csv ... 42
reading /usr/share/mecab/dic/ipadic/Filler.csv ... 19
reading /usr/share/mecab/dic/ipadic/Adj.csv ... 27210
reading /usr/share/mecab/dic/ipadic/Noun.csv ... 60477
reading /usr/share/mecab/dic/ipadic/Adnominal.csv ... 135
reading /usr/share/mecab/dic/ipadic/Auxil.csv ... 199
reading /usr/share/mecab/dic/ipadic/Adverb.csv ... 3032
emitting double-array: 100% |###########################################| 
reading /usr/share/mecab/dic/ipadic/matrix.def ... 1316x1316
emitting matrix      : 100% |###########################################| 

done!
update-alternatives: using /var/lib/mecab/dic/ipadic-utf8 to provide /var/lib/mecab/dic/debian (mecab-dictionary) in auto mode
Setting up mysql-server-8.0 (8.0.33-0ubuntu0.22.04.2) ...
Renaming removed key_buffer and myisam-recover options (if present)
mysqld will log errors to /var/lib/mysql/mssvm.err
mysqld is running as pid 8315
Created symlink /etc/systemd/system/multi-user.target.wants/mysql.service → /lib/systemd/system/mysql.service.
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3.1) ...

###########################################################################
# 4. Установить и удалить deb-пакет с помощью dpkg.

mss@mssvm:~$ wget https://download.virtualbox.org/virtualbox/6.0.24/virtualbox-6.0_6.0.24-139119~Ubuntu~eoan_amd64.deb
--2023-07-23 17:25:07--  https://download.virtualbox.org/virtualbox/6.0.24/virtualbox-6.0_6.0.24-139119~Ubuntu~eoan_amd64.deb
Resolving download.virtualbox.org (download.virtualbox.org)... 23.40.124.87
Connecting to download.virtualbox.org (download.virtualbox.org)|23.40.124.87|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 103144908 (98M) [text/plain]
Saving to: ‘virtualbox-6.0_6.0.24-139119~Ubuntu~eoan_amd64.deb’

virtualbox-6.0_6.0.24-139119~Ubuntu~ 100%[=====================================================================>]  98.37M  2.31MB/s    in 42s     

2023-07-23 17:25:50 (2.32 MB/s) - ‘virtualbox-6.0_6.0.24-139119~Ubuntu~eoan_amd64.deb’ saved [103144908/103144908]

mss@mssvm:~$ sudo dpkg -i virtualbox-6.0_6.0.24-139119~Ubuntu~eoan_amd64.deb 
[sudo] password for mss: 
Selecting previously unselected package virtualbox-6.0.
(Reading database ... 181883 files and directories currently installed.)
Preparing to unpack virtualbox-6.0_6.0.24-139119~Ubuntu~eoan_amd64.deb ...
Unpacking virtualbox-6.0 (6.0.24-139119~Ubuntu~eoan) ...
dpkg: dependency problems prevent configuration of virtualbox-6.0:
 virtualbox-6.0 depends on libqt5core5a (>= 5.12.2); however:
  Package libqt5core5a is not installed.
 virtualbox-6.0 depends on libqt5gui5 (>= 5.4.0) | libqt5gui5-gles (>= 5.4.0); however:
  Package libqt5gui5 is not installed.
  Package libqt5gui5-gles is not installed.
 virtualbox-6.0 depends on libqt5opengl5 (>= 5.0.2); however:
  Package libqt5opengl5 is not installed.
 virtualbox-6.0 depends on libqt5printsupport5 (>= 5.0.2); however:
  Package libqt5printsupport5 is not installed.
 virtualbox-6.0 depends on libqt5widgets5 (>= 5.12.2); however:
  Package libqt5widgets5 is not installed.
 virtualbox-6.0 depends on libqt5x11extras5 (>= 5.6.0); however:
  Package libqt5x11extras5 is not installed.
 virtualbox-6.0 depends on libsdl1.2debian (>= 1.2.11); however:
  Package libsdl1.2debian is not installed.
 virtualbox-6.0 depends on libssl1.1 (>= 1.1.1); however:
  Package libssl1.1 is not installed.
 virtualbox-6.0 depends on libvpx6 (>= 1.6.0); however:
  Package libvpx6 is not installed.
 virtualbox-6.0 depends on python (<< 2.8); however:
  Package python is not installed.
 virtualbox-6.0 depends on python (>= 2.7); however:
  Package python is not installed.
 virtualbox-6.0 depends on python:any (>= 2.6.6-7~).

dpkg: error processing package virtualbox-6.0 (--install):
 dependency problems - leaving unconfigured
Processing triggers for mailcap (3.70+nmu1ubuntu1) ...
Processing triggers for gnome-menus (3.36.0-1ubuntu3) ...
Processing triggers for desktop-file-utils (0.26-1ubuntu3) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for shared-mime-info (2.1-2) ...
Errors were encountered while processing:
 virtualbox-6.0
 
mss@mssvm:~$ sudo apt -f install
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Correcting dependencies... Done
The following packages were automatically installed and are no longer required:
  libmariadb3 mariadb-common
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  virtualbox-6.0
0 upgraded, 0 newly installed, 1 to remove and 4 not upgraded.
1 not fully installed or removed.
After this operation, 229 MB disk space will be freed.
Do you want to continue? [Y/n] 
(Reading database ... 182710 files and directories currently installed.)
Removing virtualbox-6.0 (6.0.24-139119~Ubuntu~eoan) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for gnome-menus (3.36.0-1ubuntu3) ...
Processing triggers for shared-mime-info (2.1-2) ...
Processing triggers for mailcap (3.70+nmu1ubuntu1) ...
Processing triggers for desktop-file-utils (0.26-1ubuntu3) ...

mss@mssvm:~$ sudo dpkg -l | grep virtualbox
rc  virtualbox-6.0                             6.0.24-139119~Ubuntu~eoan               amd64        Oracle VM VirtualBox
mss@mssvm:~$ sudo dpkg -r virtualbox-6.0
dpkg: warning: ignoring request to remove virtualbox-6.0, only the config
 files of which are on the system; use --purge to remove them too
mss@mssvm:~$ sudo dpkg -l | grep virtualbox
rc  virtualbox-6.0                             6.0.24-139119~Ubuntu~eoan               amd64        Oracle VM VirtualBox
mss@mssvm:~$ sudo dpkg -P virtualbox-6.0
(Reading database ... 181884 files and directories currently installed.)
Purging configuration files for virtualbox-6.0 (6.0.24-139119~Ubuntu~eoan) ...
mss@mssvm:~$ sudo dpkg -l | grep virtualbox








# 7. В подключенном MySQL репозитории создать базу данных “Друзья человека”

mss@mssvm:~$ sudo mysql -u admin -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 17
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE Human_friends;
Query OK, 1 row affected (0,02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| Human_friends      |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0,00 sec)


# 8. Создать таблицы с иерархией из диаграммы в БД

