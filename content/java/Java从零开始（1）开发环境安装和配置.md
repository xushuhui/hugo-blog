### 安装JDK环境

编程开发的第一步都是安装开发环境，JDK8是使用最广泛的版本，我们以JDK8为例安装开发环境

#### 下载安装包

 [下载地址](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)
根据系统选择相应的版本，我的是win10 64位
 ![](https://cdn.guojiang.club/Fj1uozzrBj07coQvfsnc6eu7eDsJ)

#### 安装

JDK 8安装十分简单，可以全部默认点击下一步即可，双击安装包进行安装，若需修改JDK安装路径则点击更改，否则直接点击下一步：
![](https://cdn.guojiang.club/FmkzXPF6v-rZLI2EkkxOWBqrVI_R)

#### 配置环境变量

安装后我们需要配置环境变量才能使用。
按以下路径顺序打开环境变量对话框：

控制面板>系统和安全>系统>高级系统设置>高级>环境变量

![](https://cdn.guojiang.club/FqN9G6QMZDpgSyfl3PV4EdiTln_d)

点击新建，变量名为JAVA_HOME，变量值为JDK安装路径如C:\Software\Java\jdk1.8.0_45（默认安装的情况下为C:\Program Files\Java\jdk1.8.0_45）
![](https://cdn.guojiang.club/Fgu5LVU2inR-mU9f7yIZnZU5VQCd)
选中Path环境变量条目，点击编辑。
点击新建，将%JAVA_HOME%\bin填入空行中即可：
![](https://cdn.guojiang.club/FpnKvPh7Hvyp3XskwV23YyDjQOSk)

> JDK 8无需配置CLASSPATH。以后其他版本JDK只需要修改JAVA_HOME即可。

#### 校验Java环境变量是否配置正确 

按住Win键和R键，弹出运行，输入cmd并回车：

依次输入java、javac和java -version并回车，应该出现如下图所示一大堆内容：
![](https://cdn.guojiang.club/FrV6tpuUCZ7xUW2verijUpXvfk8k)
若出现'java' 不是内部或外部命令，也不是可运行的程序或批处理文件。或'javac' 不是内部或外部命令，也不是可运行的程序或批处理文件，则表示Java系统环境变量未配置或配置不正确：

至此，JDK 8 下载、安装和环境变量配置完成！
