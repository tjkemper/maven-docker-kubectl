FROM maven:3.3.9-jdk-8

# Install docker-engine
# According to Petazzoni's article:
# ---------------------------------
# "Former versions of this post advised to bind-mount the docker binary from
# the host to the container. This is not reliable anymore, because the Docker
# Engine is no longer distributed as (almost) static libraries."

# correct server version
ARG docker_version=1.11.2
RUN curl -sSL https://get.docker.com/ | sh && \
    apt-get purge -y docker-engine && \
    apt-get install docker-engine=${docker_version}-0~jessie

# Install kubectl
RUN curl -O https://storage.googleapis.com/kubernetes-release/release/v1.5.3/bin/linux/amd64/kubectl \
    && chmod +x kubectl \
    && cp kubectl /usr/local/bin/kubectl
