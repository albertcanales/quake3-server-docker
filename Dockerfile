FROM alpine

WORKDIR /root

# Install script dependencies
RUN apk add --no-cache git make build-base

# Download scripts
RUN wget https://raw.githubusercontent.com/ioquake/ioq3/master/misc/linux/server_compile.sh
RUN wget https://raw.githubusercontent.com/ioquake/ioq3/master/misc/linux/start_server.sh

# Install server
RUN echo "y" | sh server_compile.sh

CMD ["sh", "start_server.sh"]
