FROM swipl:latest

# Clone
WORKDIR /src
RUN apt-get -y update
RUN apt-get -y install git
RUN git clone --depth=1 https://github.com/eyereasoner/eye.git

# Build
WORKDIR /src/eye
RUN ./install.sh --prefix=/usr/local

# Run
WORKDIR /eye
ENTRYPOINT ["eye"]
