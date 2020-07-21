---
title: node开发cms
date: 2020-05-07 07:57:34
tags: ["node"]
categories: ["node"]
---

### 简介

所有的互联网产品都需要CMS（内容管理系统），也就是我们常说的后台管理系统。它用于展示用户数据和产品信息，以及运营和推广产品。

曾经，CMS是世界上最好的编程语言--PHP的天下。帝国、织梦、wordpress、phpcms风靡一时，他们以易上手、部署方便、插件众多扛起了CMS的大旗。而近些年，其他语言开发的CMS也如雨后春笋般冒出来，为不会PHP的开发者提供更多选择。

今天就给大家介绍一个用nodejs开发的CMS

### DoraCMS

开源地址：https://github.com/doramart/DoraCMS

DoraCMS 是基于 Nodejs+eggjs+mongodb 编写的一套内容管理系统，结构简单，较目前一些开源的 cms，易于拓展，特别适合前端开发工程师做二次开发。

它设计思想很简单，以简洁为原则，结构清晰，非常容易定制和二次开发，当然在开发过程中也吸取了优秀框架一些可取之处。

它还支持docker部署和源码安装部署。

#### 说明

技术栈：```nodejs 12 + eggjs 2 +  vue-cli + mongodb 4+```

文档： https://www.doracms.com/

API： https://www.html-js.cn/static/apidoc/index.html

演示地址： https://www.html-js.cn/

后台登录： https://www.html-js.cn/dr-admin

测试账号：doracms/123456

视频教程：https://www.bilibili.com/video/av77251989/

##### 后台界面

![](https://cdn.guojiang.club/FkDkEw_x97ggv2nIShVKqExfBtzR)

常用的CMS功能都有，包括系统日志、权限管理、用户管理、角色管理等。我们就不用自己再造一遍轮子，能够节省工作时间，提升工作效率。

从前端页面到数据接口，前端工程师直接上手完成，开拓了我们的职业边界，提升了竞争力。

迄今为止，它在github已经有了2500多个star，当前最新版本是2.1.6，作者也一直在更新和维护代码。推荐大家开发CMS的时候使用，Let's go !



