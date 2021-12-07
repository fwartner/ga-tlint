FROM php:8.0-alpine

LABEL "com.github.actions.name"="GA-TLINT"
LABEL "com.github.actions.description"="Lint php files"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/fwartner/ga-tlint"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Florian Wartner <florian@wartner.io>"

ENV COMPOSER_ALLOW_SUPERUSER 1

ENV COMPOSER_HOME /home/.composer

# Install Composer
RUN php -r "readfile('https://getcomposer.org/installer');" > /tmp/composer-setup.php \
    && mkdir -p /composer/bin \
    && php /tmp/composer-setup.php --install-dir=/composer/bin --filename=composer \
    && rm /tmp/composer-setup.php \
    && ln -sf /composer/bin/composer /usr/local/bin/composer

VOLUME /composer/bin/

RUN apk add --no-cache \
    bash \
    libzip \
    libzip-dev \
    git

RUN docker-php-ext-install zip
RUN composer global require tightenco/tlint

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
