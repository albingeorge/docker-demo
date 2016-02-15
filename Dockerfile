FROM ubuntu:14.04.2

RUN apt-get update && apt-get install -y nodejs build-essential npm

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g http-server

RUN npm install -g forever

RUN mkdir /src

# Set the working directory
WORKDIR /src/templates

EXPOSE 3000

ADD docker.sh /src

ADD templates /src/templates


RUN chmod +x /src/docker.sh

# CMD ["/bin/bash"]
ENTRYPOINT "/src/docker.sh"
