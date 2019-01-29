FROM docker:latest
MAINTAINER Poeschl@users.noreply.github.com

ENV ECS_DEPLOY_VERSION='3.6.0'

RUN apk -Uuv add make groff less python py-pip ca-certificates curl bash jq && \
    pip install awscli && \
    apk --purge -v del py-pip && rm /var/cache/apk/* && \
    curl https://raw.githubusercontent.com/silinternational/ecs-deploy/${ECS_DEPLOY_VERSION}/ecs-deploy -o '/usr/local/bin/ecs-deploy'

RUN chmod a+x /usr/local/bin/ecs-deploy && ln -s /usr/local/bin/ecs-deploy
