FROM ghcr.io/cmgrayb/yamllint:v1.1.0 AS yamllint

RUN apk add --update --no-cache bash

COPY pipe /
COPY LICENSE pipe.yml README.md /
RUN wget --no-verbose -P / https://bitbucket.org/bitbucketpipelines/bitbucket-pipes-toolkit-bash/raw/0.6.0/common.sh && chmod a+x /*.sh

ENTRYPOINT ["/pipe.sh"]
