# !/bin/sh
cd ./api
mvn package -Dmaven.test.skip=true
cp ./target/w-blog-*.jar ./src/main/docker/

cd ../admin
npm --registry=https://registry.npm.taobao.org install
npm install
npm run build:prod

cd ..
