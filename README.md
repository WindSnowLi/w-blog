# w-blog

## 描述

一个后端使用Spring Boot 2.x、前台使用nuxtJs、后台使用vue的个人博客

## 简介

一个主要靠拼凑而成的个人博客项目，共分为了 [前台](https://github.com/WindSnowLi/vue-ssr-blog)
、 [后台](https://github.com/WindSnowLi/vue-admin-blog) 、 [api](https://github.com/WindSnowLi/w-blog-api) 三个部分。

1. [api](https://github.com/WindSnowLi/w-blog-api)
   后端基于 `SpringBoot` 。主要依赖 `mybatis` 、 `fastjson` 、 `DruidDataSource` 、 `Lombok` 、 `java-jwt` 、 `aliyun-sdk-oss`

   、 `knife4j` 等，数据库使用的是 `MySQL8.0+`

2. [前台](https://github.com/WindSnowLi/vue-ssr-blog)
   前台的主要样式是来源于网络上了一个 `BizBlog` 模板，最初来源于哪我不得而知，在原本的基础上改写成了 `nuxtJs` 项目。
3. [后台](https://github.com/WindSnowLi/vue-admin-blog)
   后台UI套用的[vue-element-admin](https://github.com/PanJiaChen/vue-element-admin)，基本是直接拿来用了，想自己定制着实实力不允许。
4. [示例](https://www.blog.hiyj.cn/)：[绿色食品——菜狗](https://www.blog.hiyj.cn/)

## 本地启动

### [api](https://github.com/WindSnowLi/w-blog-api)：前台后台请求的api使用的是同一个项目

1. `git clone https://github.com/WindSnowLi/w-blog-api.git` 克隆项目到本地
2. `mvn clean install dependency:tree` 安装依赖
3. 修改开发环境 `application-dev.yml` 和生产环境 `application-prod.yml` 中的数据库配置信息； `knife4j` 只在开发环境中激活。
4. 创建数据库配置中指定名称的空数据库，`UTF8`编码
5. `mvn clean package -Dmaven.test.skip=true` 跳过测试并生成 `jar` 包
6. `java -jar 生成的包名.jar` 运行开发配置环境，初次运行会自动初始化数据库
7. 访问 `http://127.0.0.1:8888/doc.html` 查看 `api` 文档
8. *推荐使用IDEA打开项目文件夹自动处理依赖、方便运行*

### [前台](https://github.com/WindSnowLi/vue-ssr-blog)

1. `git clone https://github.com/WindSnowLi/vue-ssr-blog.git` 克隆项目到本地
2. `npm install` 安装依赖
3. 可修改 `config/sitemap.xml` 文件中的 `host` 地址，用于生成访问地图
4. 可修改 `nuxt.config.js` 中的端口号
5. 可修改 `package.json` 文件中的 `script` 中的 `BASE_URL` 来指定后端 `api` 地址
6. `npm run build` 编译
7. `npm start` 本地运行

### [后台](https://github.com/WindSnowLi/vue-admin-blog)

1. `git clone https://github.com/WindSnowLi/vue-admin-blog.git` 克隆项目到本地
2. `npm install` 安装依赖
3. `npm run dev` 使用模拟数据预览界面
4. 修改 `.env.production` 文件中的 `VUE_APP_BASE_API` 地址为后端 `api` 的地址
5. `npm run build:prod` 编译
6. `dist` 文件夹下的为编译好的文件，可放到 `http` 服务器下（可以使用 `npm` 安装 `http-server` ）进行访问

## 界面展示

### 前台

![首页](https://pic.hiyj.cn/images/2021/08/30/8be350dc4ad9f76c10f7daa8f0ec2f83.png)

<br>

![文章详情](https://pic.hiyj.cn/images/2021/08/30/d921a4e9d688c8e42e4cb491e81ea29f.png)

<br>

![友链](https://pic.hiyj.cn/images/2021/08/30/1e6a95dba9dffe2c518fb1114d27f9ef.png)

<br>

![关于信息](https://pic.hiyj.cn/images/2021/08/30/2a71cb94b94aed68d5628ee41beb0359.png)

### 后台

![首页](https://pic.hiyj.cn/images/2021/08/30/c058c6879cad0dc8db994a7dc57f1de6.png)

<br>

![创建文章](https://pic.hiyj.cn/images/2021/08/30/5a9b1e429a934801704cc9ef9526ff60.png)

<br>

![管理文章](https://pic.hiyj.cn/images/2021/08/30/b9a4cc395e4e02ff996c198f39c10895.png)

![文章列表](https://pic.hiyj.cn/images/2021/08/30/7e69e00b415213d37034dd49d236d18e.png)

<br>

![友链管理](https://pic.hiyj.cn/images/2021/08/30/2cd2f03ab3eab5ea0e14a7ced2695d09.png)

<br>

![关于信息](https://pic.hiyj.cn/images/2021/08/30/5582f506f1a93b114baef9d9977841ea.png)

## License

[MIT](https://github.com/WindSnowLi/w-blog-api/blob/master/LICENSE)

Copyright (c) 2021 WindSnowLi
