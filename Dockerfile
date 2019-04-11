FROM node:8.15.1-alpine

ENV NODE_ENV=development
# リポジトリ内のファイルをまるっとコンテナ内にコピー
# 実際は.dockerIgnoreというファイルを用意して無視するファイルを指定しています。（.gitignore的なやつですね。）
COPY . /app

WORKDIR /app

# # リポジトリ内のファイルをコンテナ内にコピー
# COPY package.json package.json
# COPY package-lock.json package-lock.json

RUN npm install -g express-generator

CMD npm start

EXPOSE 3000