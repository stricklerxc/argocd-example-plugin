FROM ruby:3

RUN apt-get update && apt-get install jq -y

WORKDIR /home/argocd/cmp-server/config/
COPY plugin.yaml ./

COPY generate.sh /home/plugin/generate.sh
RUN chmod +x /home/plugin/generate.sh

