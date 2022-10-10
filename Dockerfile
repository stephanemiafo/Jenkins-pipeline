

FROM ubuntu

# Add a tag
LABEL owner="STEPHANE"

# Update our packages and install apache
RUN RUN apt-get update && apt-get install -y apache2

RUN apt-get clean all

#Copy the app inside the container
COPY index.html /var/www/html

# Port that the container will listen from
EXPOSE 80

# Run httpd by doing systemctl start httpd in other words tell him to go to /usr/sbin/ and run httpd. 
# please start httpd when the container start.         
ENTRYPOINT [ "/usr/sbin/apache2" ]

#Prevent the container to exit, please run the container in the background
CMD [ "httpd", "-g", "daemon off;" ]
