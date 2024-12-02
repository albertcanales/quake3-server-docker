FROM alpine

# Create user
ARG user=quake
ARG group=quake
ARG uid=1000
ARG gid=1000
RUN addgroup -g ${gid} ${group}
RUN adduser -u ${uid} -G ${group} -D ${user}
WORKDIR /home/${user}

# Install dependencies
RUN apk add --no-cache git make build-base zip

# Download scripts
USER ${user}
RUN wget https://raw.githubusercontent.com/ioquake/ioq3/master/misc/linux/server_compile.sh
RUN wget https://raw.githubusercontent.com/ioquake/ioq3/master/misc/linux/start_server.sh

# Install server
RUN echo "y" | sh server_compile.sh

# Apply patches
RUN wget https://files.ioquake3.org/quake3-latest-pk3s.zip
RUN unzip quake3-latest-pk3s.zip
RUN cp -r quake3-latest-pk3s/* ioquake3/
RUN rm -rf quake3-latest-pk3s.zip quake3-latest-pk3s

# Switch to user
USER ${uid}:${gid}

ENTRYPOINT ["sh", "start_server.sh"]
