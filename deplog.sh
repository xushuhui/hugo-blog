#!/usr/bin/env sh


# 确保脚本抛出遇到的错误
  set -e

# 生成静态文件
hugo

# 进入生成的文件夹


# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME
#
cd public/
git init
git add -A
git commit -m 'deploy'
#

#git remote add origin git@github.com:xushuhui/xushuhui.github.io.git
#git push -u origin master
git push -f git@github.com:xushuhui/xushuhui.github.io.git master
git push -f git@e.coding.net:xushuhui/xushuhui.coding.me.git master
git push -f git@gitee.com:xushuhui/xushuhui.git master
# 如果发布到 https://<USERNAME>.github.io  USERNAME = 你的用户名 
#git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>  REPO=github 上的项目
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -