FROM openjdk:11

# Download
WORKDIR /
RUN apt-get -y update
RUN apt-get -y install socat
RUN wget https://github.com/RubenVerborgh/Quick-SPARQL-Endpoint/releases/download/v0.1.0/quick-sparql-endpoint.jar

# Run
WORKDIR /sparql
EXPOSE 4000
ENTRYPOINT ["./proxy"]
