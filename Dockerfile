FROM docker:dind


RUN apk --update add curl git
RUN apk add --no-cache --virtual .pynacl_deps build-base python3-dev libffi-dev libressl-dev musl-dev 
RUN curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.12.0/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin/
RUN curl -Lo kind https://github.com/kubernetes-sigs/kind/releases/download/0.2.0/kind-linux-amd64 && chmod +x kind && mv kind /usr/local/bin/

