FROM php:7-cli
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN chmod +x /usr/bin/composer
