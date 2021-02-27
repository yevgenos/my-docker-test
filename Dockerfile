FROM nginx:latest
RUN mkdir -p /etc/nginx /var/www/site1.com /var/www/logs
ADD nginx/ /etc/nginx/
ADD www/site1.com/ /var/www/site1.com
ADD crontab /etc/crontab
RUN chown -R nginx:nginx /etc/nginx /var/www
RUN rm -f /usr/share/nginx/html/index.html
RUN ln -s /var/www/site1.com/index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD service nginx start && /bin/bash
