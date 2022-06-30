FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends \
        ca-certificates \
        clang-14 \
        curl \
        git \
        tar \
        ninja-build \
        pkg-config \
        python3 \
        unzip \
        zip \
    && update-alternatives --install /usr/local/bin/clang clang /usr/bin/clang-14 99 \
    && update-alternatives --install /usr/local/bin/clang++ clang++ /usr/bin/clang++-14 99 \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends gpg \
    && curl https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null \
        | gpg --dearmor - \
        | tee /usr/share/keyrings/kitware-archive-keyring.gpg > /dev/null \
    && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' \
        | tee /etc/apt/sources.list.d/kitware.list >/dev/null \
    && apt-get update \
    && rm /usr/share/keyrings/kitware-archive-keyring.gpg \
    && apt-get install --assume-yes --no-install-recommends \
        cmake \
        kitware-archive-keyring \
    && rm -rf /var/lib/apt/lists/*

ENV CMAKE_GENERATOR=Ninja
