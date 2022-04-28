FROM wordpress:latest
# Add WP-CLI
RUN apt-get update &amp;&amp; apt-get install -y sudo less
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN curl -o /bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY wp-su.sh /bin/wp
RUN chmod +x /bin/wp-cli.phar
RUN apt-get clean &amp;&amp; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
