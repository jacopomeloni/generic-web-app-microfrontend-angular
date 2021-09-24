FROM alpine:3.13

RUN apk --no-cache add \
    curl \
    git \
    make \
    nodejs \
    npm

# Angular cli
RUN npm install -g @angular/cli
#RUN npm install -g ngx-build-plus


RUN mkdir /.npm && chown -R 1000:1000 "/.npm"

EXPOSE 4200

WORKDIR /app
