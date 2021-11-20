# #!/bin/bash



# sudo su
# apt-get update
# sudo apt-get install wget -y
# # add Elastic’s signing key so that the downloaded package can be verified
# wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# # add the repository definition to your system

# echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

# # The following code updates linux distribution and installs apache2

# sudo apt-get update 

 
# sudo apt-get install apache2 -y

# echo '<!doctype html><html><body><h1>Hello World!</h1></body></html>' | sudo tee /var/www/html/index.html
        
# # Installs metric beat
# sudo apt install metricbeat -y
#                 # Configure metric beat
#                 ## update elasticsearch and kibana entries in metricbeat.

# sudo sed -i -e 's/#host: "localhost:5601"/host:192.168.1.6:5601/;s/localhost:9200/192.168.1.4:9200/' /etc/metricbeat/metricbeat.yml
#                 ## enable apache module 
# sudo metricbeat modules enable apache 
#                 ## start metricbeat and enable it to start automatically on system boot
# sudo systemctl start metricbeat
# sudo /bin/systemctl enable metricbeat.service
       

