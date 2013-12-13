# Install mooshak with requirements on a new GCE intance
# Using mooshak's beta version .. read the commented instructions below
# mooshak: http://mooshak.dcc.fc.up.pt/
sudo apt-get install vim
sudo -i
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install gcc
sudo apt-get install make
sudo apt-get install tcl
sudo apt-get install apache2
sudo apt-get install apache2-suexec
sudo apt-get install xsltproc
cd /etc/apache2/mods-enabled
sudo ln -s ../mods-available/userdir.conf
sudo ln -s ../mods-available/userdir.load
sudo ln -s ../mods-available/suexec.load
vim /etc/apache2/mods-enabled/userdir.conf
# Add the following in the file opened above:
#  <Directory /home/*/public_html/cgi-bin>
      #  Options +ExecCGI -Includes -Indexes
       # SetHandler cgi-script
#       Order allow,deny
#       Allow from all
#   </Directory>
sudo apache2ctl graceful
cd ~
sudo apt-get install lpr
sudo apt-get install time
sudo apt-get install host
wget ftp://xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz
tar xzf libxml2-2.9.1.tar.gz
cd libxml2-2.9.1
./configure
make
make install
ln -s /usr/local/bin/xmllint /usr/bin/xmllint
cd ~
wget --no-check-certificate http://mooshak.dcc.fc.up.pt/download/mooshak-1.6b15.tgz
tar xzf mooshak.tgz
cd mooshak-1.6b13
./install
