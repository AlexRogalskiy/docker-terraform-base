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
WORKDIR /root/.terraform.d/plugins/registry.terraform.io/hashicorp
RUN chmod +x alicloud/1.120.0/linux_amd64/terraform-provider-alicloud_v1.120.0
RUN chmod +x aws/3.36.0/linux_amd64/terraform-provider-aws_v3.36.0_x5
RUN chmod +x azurerm/2.60.0/linux_amd64/terraform-provider-azurerm_v2.60.0_x5
RUN chmod +x null/v3.1.0/terraform-provider-null_v3.1.0_x5
RUN chmod +x template/v2.20/terraform-provider-template_v2.2.0_x4
