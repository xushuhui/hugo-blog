---
title: node新手课（19）项目打包和部署
date: 2020-06-25 07:57:34
tags: ["node"]
categories: ["node"]
---
## node新手课（19）项目打包和部署

### 简介
上节课我们讲了首页列表，我们所有开发功能模块就已经讲完了，今天是最后一课，我们来讲项目部署到服务器。
### 需求
把项目部署到云服务器上，能够对外网提供接口服务。
### 功能流程
1）在云服务器上安装nodejs环境。

2） 将我们写好的 koa2 项目就是sir-koa目录 全部放到服务器上 (除了 node_modules 文件夹)。

3）云服务切换到你项目所在路径，以/home/sir-koa目录为例。

```
$ cd /home/sir-koa
$ npm install  //安装相关依赖文件
$ npm run start //测试下你的 koa2 项目能不能跑起来
```

> ps：这样还不够，因为退出服务器后 node 进程就自动关了，项目也就自动关闭了
所以我们需要 pm2 来守护进程。

4）安装 pm2

我们选择全局安装 pm2。
```
$ npm install pm2 -g
```
安装完成后云服务切换到项目所在路径/home/sir-koa。
```
$ pm2 start ./bin/www --watch
```

一般我们都是通过npm start启动应用，其实就是调用node ./bin/www。那么，换成pm2就是```pm2 start```

> 注意，这里用了--watch参数，意味着当你的koa2应用代码发生变化时，pm2会帮你重启服务。

![](https://cdn.guojiang.club/Fg3MuhHA-tDRWMLv6wltQtzl7uG5)
### 总结
node教程已经全部更新完，大家可以在教程基础上根据需求扩展新功能。
青山不改，绿水长流，江湖再见，后会有期。