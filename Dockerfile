FROM node:14.17.0-alpine
WORKDIR /usr/src/app

RUN apk add make gcc g++ \
	&& apk --update add tzdata \
	&& cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
	&& apk del tzdata