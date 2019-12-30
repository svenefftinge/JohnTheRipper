FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get -q update && \
    sudo apt-get install -yq libssl-dev zlib1g-dev \
         yasm libgmp-dev libpcap-dev pkg-config \
         libbz2-dev libiomp-dev && \
    sudo rm -rf /var/lib/apt/lists/*
