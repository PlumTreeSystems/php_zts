FROM debian:stretch-slim

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libicu-dev \
	autoconf \
	bison \
	libxml2-dev \
	libbz2-dev \
	libenchant-dev \
	libjpeg-dev \
	libxrender1 \
	libfontconfig1 \
	libxtst6 \
	zip \
	git \
	make \
	build-essential \
	libssl-dev \
	libpspell-dev \
	libedit-dev \
	libreadline-dev \
	libxslt-dev
COPY ./buildscript.sh /app/buildscript.sh
RUN chmod +x /app/buildscript.sh
RUN /app/buildscript.sh

