FROM ubuntu:18.04

RUN apt-get update && apt-get install -y gnupg2 software-properties-common
# Ing-kai https
RUN apt-key adv --fetch-keys http://repos.codelite.org/CodeLite.asc
RUN apt-add-repository 'deb https://repos.codelite.org/wx3.1.3/ubuntu/ bionic universe'
RUN apt-get update
RUN apt-get install -y \
  libwxbase3.1-0-unofficial3 \
  libwxbase3.1unofficial3-dev \
  libwxgtk3.1-0-unofficial3 \
  libwxgtk3.1unofficial3-dev \
  wx3.1-headers \
  wx-common \
  libwxgtk-media3.1-0-unofficial3 \
  libwxgtk-media3.1unofficial3-dev \
  libwxgtk-webview3.1-0-unofficial3 \
  libwxgtk-webview3.1unofficial3-dev \
  libwxbase3.1-0-unofficial3-dbg \
  libwxgtk3.1-0-unofficial3-dbg \
  libwxgtk-webview3.1-0-unofficial3-dbg \
  libwxgtk-media3.1-0-unofficial3-dbg \
  wx3.1-i18n \
  wx3.1-examples
RUN apt-get install -y \
  autoconf libtool automake
RUN apt-get install -y \
  libboost-dev libboost-chrono-dev libboost-filesystem-dev \
  libboost-locale-dev libboost-regex-dev libboost-thread-dev
RUN apt-get install -y \
  luajit ffmpeg intltool
RUN apt-get install -y \
  libfreetype6-dev libfontconfig1-dev libass-dev \
  libffms2-dev libuchardet-dev libfftw3-dev \
  libice-dev
