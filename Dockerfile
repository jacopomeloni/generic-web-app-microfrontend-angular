FROM alpine:3.13

RUN apk --no-cache add \
    curl \
    git \
    make \
    nodejs \
    npm

# Serverless Framework
RUN npm install -g serverless

# Angular cli
RUN npm install -g @angular/cli

# Amplify for Cognito setup
RUN npm install -g @aws-amplify/cli

# Install aws cli
RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install \
        awscli \
    && rm -rf /var/cache/apk/*

RUN mkdir /.npm && chown -R 1000:1000 "/.npm"
RUN mkdir /.serverless && chown -R 1000:1000 "/.serverless"
RUN mkdir /.amplify && chown -R 1000:1000 "/.amplify"

EXPOSE 4200

WORKDIR /app
