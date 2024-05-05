FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget tar build-essential gdb

RUN wget https://www.nasm.us/pub/nasm/releasebuilds/2.16.01/nasm-2.16.01.tar.gz
RUN tar -xzvf nasm-2.16.01.tar.gz
WORKDIR /nasm-2.16.01

RUN ./configure && make && make install
WORKDIR /app
RUN rm -rf /nasm-2.16.01.tar.gz /nasm-2.16.01
