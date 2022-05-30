#!/bin/bash
yum -y update
yum -y install httpd

myip = `curl http://169.254.169.254/latest/meta-data/local-ipv4

cat <<EOF > /var/www/html/index.html
<html>
<body bgcolor="black">
<h2>Server PrivatIP: <h3>$myip</h3></h2>
</html>
EOF

sudo systemctl httpd start
chkconfig httpd on
