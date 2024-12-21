FROM ubuntu:latest

WORKDIR /server

ARG VERSION="1.21.4"
ARG TYPE="vanilia"

COPY setup.sh .
COPY build-vanilia.sh .
COPY run.sh .

RUN bash setup.sh
RUN bash build-vanilia.sh

CMD [ "bash","run.sh" ]



EXPOSE 25565