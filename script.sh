# Update
sudo yum -y update
# Install wget
echo "Installing wget"
sudo yum install wget -y

# Let's get into tmp
cd /home/vagrant
mkdir tmp
cd tmp

# Get JDK
echo "Installing java"
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.rpm"
sudo yum localinstall jdk-8u60-linux-x64.rpm -y
rm jdk-8u60-linux-x64.rpm

# set JAVA_HOME
sudo sh -c "echo export JAVA_HOME=/usr/java/jdk1.8.0_60/jre >> /etc/environment"
source /etc/environment

# Get node js
echo "Installing nodejs"
wget http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz
sudo tar --strip-components 1 -xzvf node-v* -C /usr/local
rm node-v0.10.30-linux-x64.tar.gz
