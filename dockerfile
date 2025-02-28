FROM ubuntu:latest

WORKDIR /server

ARG VERSION="latest"
ARG TYPE="vanilia"

COPY . .

RUN bash setup.sh
RUN bash build-vanilia.sh

CMD [ "bash","run.sh" ]

EXPOSE 25565