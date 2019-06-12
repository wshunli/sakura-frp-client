FROM alpine:3.8
MAINTAINER wshunli <wshunli@qq.com>

WORKDIR /

RUN apk upgrade && apk add --no-cache ca-certificates && \
    set -x && \
	wget --no-check-certificate https://cdn.tcotp.cn:4443/client/Sakura_frpc_linux_amd64.tar.gz  && \ 
	mkdir \sfrpc && \
	mv Sakura_frpc_linux_amd64* /sfrpc && \
	cd /sfrpc && \
	tar xzf Sakura_frpc_linux_amd64.tar.gz && \
	rm -rf *.tar.gz

ENV SU test
ENV SP 123456
ENV SID 1

CMD /sfrpc/Sakura_frpc_linux_amd64 --su=${SU} --sp=${SP} --sid=${SID}