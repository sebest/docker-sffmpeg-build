FROM ubuntu:wily

RUN apt-get update \
    && apt-get install -y \
    git build-essential unzip \
    cmake automake libtool libtool-bin pkg-config curl mercurial

RUN git clone https://github.com/pyke369/sffmpeg.git

WORKDIR /sffmpeg

VOLUME /ffmpeg-bin

CMD git pull && make && cp /sffmpeg/build/bin/ffmpeg /sffmpeg/build/bin/ffprobe /ffmpeg-bin
