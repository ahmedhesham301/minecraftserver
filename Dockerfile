FROM alpine/java:22-jre 

WORKDIR /server

ARG VERSION="latest"
ARG TYPE="vanilia"

COPY . .

RUN sh setup.sh
RUN sh build-vanilia.sh

CMD [ "sh","run.sh" ]

EXPOSE 25565