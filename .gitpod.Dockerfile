FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get -q update && \
    sudo apt-get install -yq libssl-dev zlib1g-dev \
         yasm libgmp-dev libpcap-dev pkg-config \
         libbz2-dev libiomp-dev fglrx-dev opencl-headers && \
    sudo rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/OpenCL/vendors && \
    sudo ln -sf /usr/lib/fglrx/etc/OpenCL/vendors/amdocl64.icd /etc/OpenCL/vendors/amd.icd
