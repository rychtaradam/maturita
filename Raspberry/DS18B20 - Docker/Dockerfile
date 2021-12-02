FROM ubuntu:20.04
run apt update && ln -sf /usr/share/zoneinfo/GMT /etc/localtime  && apt upgrade -y && apt install -y build-essential && apt install -y cmake 
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN cmake . && make 
CMD ["./DS18B20Reader"]