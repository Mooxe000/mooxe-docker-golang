FROM mooxe/base:dev

# update
RUN apt-fast update && \
    apt-fast upgrade -y

# gcc for cgo
RUN apt-fast install -y --no-install-recommends \
		g++ \
		gcc \
		libc6-dev \
		make \
		pkg-config


ENV GOLANG_VERSION 1.11.2
ENV GOLANG_DOWNLOAD_URL https://golang.org/dl/go$GOLANG_VERSION.linux-amd64.tar.gz
ENV GOLANG_DOWNLOAD_SHA256 1dfe664fa3d8ad714bbd15a36627992effd150ddabd7523931f077b3926d736d

COPY download/go${GOLANG_VERSION}.linux-amd64.tar.gz golang.tar.gz

# RUN curl -SfL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz
# RUN apt-fast install -y axel
# RUN axel "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz

RUN \
	echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - && \
	tar -C /usr/local -xzf golang.tar.gz && \
	rm golang.tar.gz

ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
# ENV GOPATH /go

# RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# WORKDIR $GOPATH

# COPY go-wrapper /usr/local/bin/

RUN \
	apt-fast autoremove -y && \
	apt-fast autoclean && \
	rm -rf /var/lib/apt/lists/*
