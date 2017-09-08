FROM ubuntu:xenial
ENV container docker
STOPSIGNAL SIGRTMIN+3

ARG version
ADD https://releases.hashicorp.com/consul-template/${version}/consul-template_${version}_linux_amd64.tgz /
RUN tar -zxf /consul-template_${version}_linux_amd64.tgz && \
    rm /consul-template_${version}_linux_amd64.tgz

ENTRYPOINT [ "/consul-template" ]
