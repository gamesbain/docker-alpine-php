FROM alpine:edge

RUN apk --update add \
        php7 \
        php7-dom \
        php7-ctype \
        php7-curl \
        php7-fpm \
        php7-gd \
        php7-intl \
        php7-json \
        php7-mbstring \
        php7-mcrypt \
        php7-mysqlnd \
        php7-opcache \
        php7-pdo \
        php7-pdo_mysql \
        php7-mysqli  \
        php7-posix \
        php7-session \
        php7-xml \
        php7-iconv \
        php7-phar \
        php7-openssl \
        php7-zlib \
        php7-xmlrpc \
        php7-zip \
        php7-bz2 \
    && rm -rf /var/cache/apk/*

COPY php-fpm.conf /etc/php7/php-fpm.conf


EXPOSE 9000

CMD ["php-fpm7", "-F"]
