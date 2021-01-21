---
title: node 新手课（14）修改用户信息
date: 2020-05-07 07:57:34
tags: ["node"]
categories: ["node"]
---

## node 新手课（14）修改用户信息

## 简介

上节课我们讲了用户信息展示，今天我们来讲修改用户信息功能。

## 需求

用户修改自己的信息，如头像，昵称，手机号等，我们以修改昵称为例。

## 功能流程

通过用户凭据 token 获取到用户 id，在数据库 user 表中找到用户记录，把前端传来的昵称更新到记录中。

## 代码

> routes/user.js

```
//更新个人信息
userrouter.put('/info',auth, function (ctx, next) {
  return userApi.info(ctx)
})
```

> api/user.js

```
const info = async(ctx) => {
    const nickname = ctx.request.body.nickname
    await userModel.updateUserInfo(userId,nickname)
    ctx.body = resp.succeed()
    return
}
```

> model/usermodel.js

```
const updateUserInfo = async(userId,nickname)=>{
    let sql = "update `user` set nickname=? where id=?"
    const res = await mysql.exec(sql,[nickname,userId])
    return res.affectedRows
}
```

## 运行

```
PUT http://localhost:3000/user/info

{
    "nickname":"test"
}
```

![](https://cdn.guojiang.club/Fo6qftIGMQq8uM7ANRdWs9Kskow5)

## 总结

修改用户信息功能就讲完了，你掌握了吗？有问题欢迎到群里和志同道合的小伙伴一起交流。

下节课我们讲解图片上传，继续加油吧，Let's go！
