FROM php:7-cli
COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY --from=composer /usr/bin/git /usr/bin/git
RUN chmod +x /usr/bin/composer /usr/bin/git
