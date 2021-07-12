FROM alpine:3.13

RUN \
  apk update && \
  apk add bash py-pip && \
  apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python3-dev make && \
  apk add curl jq python3 ca-certificates git openssl unzip wget && \
  pip --no-cache-dir install -U pip && \
  pip install azure-cli && \
  apk del --purge build

RUN wget https://gosspublic.alicdn.com/ossutil/1.7.5/ossutil64 && chmod +x ./ossutil64
RUN wget https://docker-terraform.oss-accelerate.aliyuncs.com/.terraform.d.tar.gz && tar -xvf .terraform.d.tar.gz --directory /root/
