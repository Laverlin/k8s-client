FROM alpine:latest

RUN apk update && apk add --no-cache curl

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN chmod +x kubectl && mv kubectl /usr/bin/kubectl

ENTRYPOINT [ "kubectl" ]