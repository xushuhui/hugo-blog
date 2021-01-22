---
title: Node 新手课（1）nodejs 下载安装
date: 2020-01-17 07:57:34
tags: ["Node"]
categories: ["Node"]
---

## 简介

上节课我们介绍了项目和课程，俗话说：工欲善其事必先利其器，今天我们就开始搭建 node 环境。

## 普通安装

* 访问 [http://nodejs.cn](http://nodejs.cn)，下载并且安装

![nodejs](https://cdn.guojiang.club/1588995583%281%29.png)

![nodejs](http://ww1.sinaimg.cn/large/a616b9a4gy1gewlqbc688j20e40az0tk.jpg)

* 打开 cmd 命令行

```
查看 node 版本
$ node -v
$ v12.9.1
查看 npm 版本
$ npm -v
$ 6.14.5

```

## nvm(Node Version Manager) 安装

* nvm，nodejs 版本管理工具，可切换多个 nodejs 版本

### mac

* 使用`` `brew install nvm ` ``

### windows

* 访问 [https://github.com/coreybutler/nvm/releases](https://github.com/coreybutler/nvm/releases), 下载安装

![nvm](http://ww1.sinaimg.cn/large/a616b9a4gy1gewitbfz8zj20eo0bbq33.jpg)

### linux

* 访问 [https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm), 执行以下命令

```
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

### nvm 常用命令

* `` `nvm list/nvm ls` `` 查看当前所有的 node 版本
* `` `nvm install 10.13.0` `` 安装指定 10.13.0 版本
* `` `nvm use  10.13.0` ``  切换到指定 10.13.0 版本
* `` `nvm uninstall 10.13.0` ``   删除 10.13.0 版本的 node
* `` `nvm ls-remote` ``   罗列远程的 node 版本
* `` `nvm current` ``   查看当前正在使用的 node 版本
* `` `nvm alias default v10.13.0` ``   切换 v.10.13.0 为默认版本，每次新建的命令行中就是默认的版本了
* `` ` npm list --depth=0 -g` ``  查看全局都安装了那些 npm 的包

## npm 下载加速

npm 默认下载地址在国外，下载 npm 包会很慢，所以我们需要配置 npm 淘宝镜像，能大大提升下载速度

### 配置淘宝镜像

```
$ npm config set registry https://registry.npm.taobao.org
```

### 恢复国外下载地址

```
$ npm config set registry https://registry.npmjs.org
```

> 如果你需要同时使用多个 node 版本，推荐使用 nvm。
>
> 无论使用哪种方式安装 node, 版本要》=8.0。

## 总结

你的 node 环境搭建好了吗，有问题欢迎到群里和志同道合的小伙伴一起交流。

下节课我们开始第一个 node 程序 --hello world，继续加油吧，Let's go！
