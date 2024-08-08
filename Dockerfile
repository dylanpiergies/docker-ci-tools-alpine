FROM alpine

RUN apk --no-cache add git jq rsync yq && \
  cd /tmp && \
  wget "https://dl.k8s.io/release/$(wget -O - https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
  install -m 555 kubectl /usr/local/bin/kubectl && \
  rm kubectl
