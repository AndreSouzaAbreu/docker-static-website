FROM alpine:3.14

# Install packages
RUN apk update
RUN apk add nginx curl

# install supervisor (but written in Go)
COPY --from=ochinchina/supervisord /usr/local/bin/supervisord /usr/bin/supervisord

# Configure nginx
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/nginx-default.conf /etc/nginx/conf.d/default.conf

# Configure supervisord
COPY config/supervisord.conf /etc/supervisor/default.conf

# Create dir for application
RUN mkdir -p /var/www/

# # Make sure files can run under nobody user
# RUN chown -R nobody:nobody /var/www/ && \
#   chown -R nobody:nobody /run && \
#   chown -R nobody:nobody /var/lib/nginx && \
#   chown -R nobody:nobody /var/log/nginx && \
#   chown -R nobody:nobody /etc/nginx

# Switch to a non-root user from here on
# USER nobody
WORKDIR /var/www/html

# Expose the port nginx is reachable on
EXPOSE 8080

# run supervisor
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/default.conf"]
