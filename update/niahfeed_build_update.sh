#1/bin/bash

#copy file from niah-parser machine
sudo scp niah-parser@199.66.93.24:/tmp/niahfeed_latest.tar.gz /tmp

#go to the proper path directory where file is copied
cd /tmp

#extract file
tar -xvf niahfeed_latest.tar.gz

#remove existing feed files
rm -rf /var/DB/feeds

#move new generated feed file
sudo mv var/DB/feeds /var/DB/

#remove existing CVE files
rm -rf /var/DB/CVEs

#move new generated CVE file
sudo mv var/DB/CVEs /var/DB/

