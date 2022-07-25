#!/bin/bash
echo "start installing apache server"
echo "====================================="
sudo apt update
sudo apt install apache2

echo "start installing mysql"
echo "====================================="
sudo apt install mysql-server
sudo mysql_secure_installation

echo "start installing php and its lib"
echo "====================================="
sudo apt install php libapache2-mod-php php-mysql php-xml php-mbstring php-curl php-gd php-zip
sudo apt install unzip
sudo systemctl restart apache2

echo "Set Project Directory Name..."
echo "====================================="
read name
sudo sudo mkdir /var/www/$name
sudo chown -R 'user':root /var/www/$name

echo "Creating Git repository"
echo "====================================="
cd /var
sudo mkdir repo && cd repo
sudo mkdir $name.git
sudo chown -R 'user':root $name.git
cd $name.git
sudo git init --bare

cd /var/repo/$name.git/hooks
echo "write post-receive script file..."
echo "#!/bin/sh
git --work-tree=/var/www/domain.com --git-dir=/var/repo/site.git checkout -f"
echo "Control D to save file"
sudo cat > post-receive
echo "saved post-receive script file..."
chmod +x /var/repo/$name.git/hooks/post-receive
echo "====================================="

echo "Now to download composer.phar file..."
cd /var/www/$name/
curl -sS https://getcomposer.org/installer | php
mv /var/www/$name/composer.phar /usr/local/bin/composer
echo "====================================="

a2enmod rewrite
echo "====================================="

echo "Run this command to create new mysql user for the remote login..."
echo "mysql"
echo "CREATE USER 'dev'@'%' IDENTIFIED WITH mysql_native_password BY 'n0n@m3xxx';"
echo "GRANT ALL ON 'db'.* TO 'dev'@'%' WITH GRANT OPTION;"
echo "FLUSH PRIVILEGES;"

echo "create user for local login"
echo "====================================="
echo "CREATE USER 'dev'@'127.0.0.1' IDENTIFIED WITH mysql_native_password BY 'n0n@m3xxx';"
echo "GRANT ALL ON 'db'.* TO 'dev'@'127.0.0.1' WITH GRANT OPTION;"
echo "FLUSH PRIVILEGES;"
echo "====================================="


echo "mysql allow remote login"
echo "====================================="
echo "change bind-address = 127.0.0.1 to 0.0.0.0"
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql
echo "don't forget to allow 3306 port from firewall..."
