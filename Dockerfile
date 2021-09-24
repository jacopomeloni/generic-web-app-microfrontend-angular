FROM alpine:3.13

RUN apk --no-cache add \
    curl \
    git \
    make \
    nodejs \
    npm

# Single Spa Framework
RUN npm install -g create-single-spa

# Angular cli
RUN npm install -g @angular/cli

RUN mkdir /.npm && chown -R 1000:1000 "/.npm"


EXPOSE 9000

WORKDIR /app
