FROM php:7-cli
RUN apt-get update -y && \
    apt-get install --no-install-recommends -y bzip2 git libonig-dev libzip-dev ssh-client unzip && \
    docker-php-ext-install bcmath ctype json mbstring zip && \
    apt-get remove -y libonig-dev libzip-dev && \
    apt-get clean
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN chmod +x /usr/bin/composer
