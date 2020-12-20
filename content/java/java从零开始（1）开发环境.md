
### windows开发环境


https://www.oracle.com/java/technologies/javase-downloads.html

二、配置环境变量

按以下路径顺序打开环境变量对话框：

控制面板>系统和安全>系统>高级系统设置>高级>环境变量

https://pic1.zhimg.com/80/v2-4515f2553000169aa85fa533bc40d1d4_1440w.jpg

点击右下角“新建”，弹出的对话框中输入变量名和变量值以新建系统变量。
新系统变量变量名：JAVA_HOME

新系统变量变量值 C:\Program Files\Java\jdk1.8.0_152

新建变量后，双击“Path”，会弹出如下对话框：
路径1：C:\Program Files\Java\jdk1.8.0_152\bin

路径2：C:\ProgramData\Oracle\Java\javapath

点击确定保存退出。

按win+R调出命令提示符窗口。再次测试javac，提示配置成功。界面如下

https://pic1.zhimg.com/80/v2-f9b49768a5681bf913e9b8eb4ab3b23c_1440w.jpg