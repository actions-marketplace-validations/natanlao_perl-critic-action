FROM perl:5.28 AS builder
MAINTAINER @natanlao
COPY cpanfile cpanfile
RUN cpanm --installdeps .

FROM perl:5.28-slim
COPY --from=builder /usr/local/lib/perl5 /usr/local/lib/perl5
COPY critic /usr/bin/critic
WORKDIR /tmp/workspace
ENTRYPOINT ["perl", "/usr/bin/critic"]
