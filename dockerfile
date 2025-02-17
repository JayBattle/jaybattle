FROM httpd:2.4

COPY StartupScript.sh /home/
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./public/ /usr/local/apache2/htdocs/

RUN rm -f index.html

#For Debugging
# RUN apt-get update
# RUN apt-get -y install dos2unix
# RUN dos2unix /home/StartupScript.sh /home/StartupScript.sh
# RUN chmod +x /home/StartupScript.sh

# ENTRYPOINT ["/home/StartupScript.sh"]
# CMD [""]