FROM registry.redhat.io/openshift4/ose-cli:v4.14
WORKDIR /build
RUN curl -o oc-mirror.tar.gz https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/ocp-mirror.tar.gz
RUN tar -xvzf oc-mirror.tar.gz && chmod +x oc-mirror && mv oc-mirror /usr/local/bin
WORKDIR /storage
