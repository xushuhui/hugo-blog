---
title: redis 详解（6）redis sentinel
top: 1
date: 2018-03-12 14:51:29
tags: ["redis","NoSQL"]
categories: ["redis"]
---
## 主从复制高可用的问题
### 手动故障转移
- 指定一个slave执行slave of no one
- 指定其他slave执行slave of new master
- 客户端连接新master
### 写能力和存储能力受限
## 架构说明
### redis sentinel故障转移
- 多个sentinel发现并确认master有问题
- 选举出一个sentinel作为领导
- 选出一个slave作为master
- 通知其余slave成为新master的slave
- 通知客户端主从变化
- 等待老的master复活成为新master的slave


## 安装配置
- 配置开启主从节点
- 配置开启sentinel监控主节点
- 实际情况多机器部署
- 详细配置节点
### redis主节点
#### 启动
```
redis-server redis-7000.conf
```
#### 配置
```
port 7000
daemonize yes
pidfile /var/run/redis-7000.pid
logfile "7000.log"
dir "opt/soft/redis/data"
```
### redis从节点
#### 启动
```
redis-server redis-7001.conf
redis-server redis-7002.conf
```
#### 配置
```
port 7001
daemonize yes
pidfile /var/run/redis-7001.pid
logfile "7001.log"
dir "opt/soft/redis/data"
slaveof 127.0.0.1 7000

port 7002
daemonize yes
pidfile /var/run/redis-7002.pid
logfile "7002.log"
dir "opt/soft/redis/data"
slaveof 127.0.0.1 7000
```
### redis sentinel主要配置
```
port ${port}
dir "opt/soft/redis/data"
logfile "${port}.log"
sentinel monitor mymaster 127.0.0.1 7000 2
sentinel down-after-milliseconds mymaster 30000
sentinel parallel-syncs mymaster 1
sentinel failover-timeout mymaster 180000
```
## 客户端连接
## 实现原理
## 常见开放运维问题

## 欢迎扫描下方二维码，[个人博客](https://www.phpst.cn)，持续关注：

![](https://ww1.sinaimg.cn/large/a616b9a4gy1g4xzv954a4j20760763yo.jpg)

互联网工程师（id:phpstcn），我们一起学习，一起进步
