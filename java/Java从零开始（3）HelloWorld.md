### 前言

在学习编程中第一步都是输出Hello World，代表迈入编程大门的第一步

### 开始执行

我在D:\javatest文件夹下建立了一个HelloWorld.java文件，内容如下：

``` 

public class HelloWorld
{
	public static void main(String[] args)
	{
		System.out.println("HelloWorld");
	}
}
```

以管理员的身份运行cmd，进入D:\javatest文件目录下，首先输入：javac HelloWorld.java 

该命令用于将java源文件编译为class字节码文件，如果编译之后没有出现错误，这个文件目录下会出现一个HelloWorld.class的文件。

然后输入：java HelloWorld，出来HelloWorld就说明成功了。

> 注意文件夹的名字不能有汉字，这样会报错。
### 说明

程序由三个主要组件组成：HelloWorld类定义，main方法和源代码注释。

#### 类定义（class）语法元素

这一行使用关键字类来声明正在定义一个新类。

``` 

public class HelloWorld {

}
```

- public class 是类修饰符
- HelloWorld 是类名，要与文件名一致
- 大括号内是类的内容
#### main方法

在Java编程语言中，每个应用程序必须包含一个main方法，其签名是：

``` 
public class HelloWorld
{
	public static void main(String[] args)
	{
		
	}
}

```

public：JVM可以从任何地方执行该方法。

static：主要方法被调用没有对象。

public和static的修饰符可以按任意顺序编写。

void：主要方法不返回任何东西。

main（）：方法是您的应用程序的入口点，随后将调用程序所需的所有其他方法

String []：主要方法接受一个参数，一个String类型的元素数组。
### System.out.println
```
public class HelloWorld
{
	public static void main(String[] args)
	{
		System.out.println();
	}
}
```

该行输出字符串“Hello World”，后面跟着屏幕上的新的一行。

- System.out.println 是 Java 平台提供的类库的内容。可以将内容输出
到标注输出，在我们的例子里，就是命令行（command line）
- 小括号里的内容还是参数列表。
- 没有参数的情况下，System.out.println 会输出一行空行，也就是类似于
我们敲下一个回车。
### 字符串
```
public class HelloWorld
{
	public static void main(String[] args)
	{
		System.out.println("HelloWorld");
	}
}

```
- 在 Java 里，双引号引起来的内容叫做一个字符串。
- 字符串不是语法内容，可以写任意字符。
### 总结
- 大小写敏感：Java 是大小写敏感的，这就意味着标识符 Hello 与 hello 是不同的。
- 类名：对于所有的类来说，类名的首字母应该大写。如果类名由若干单词组成，那么每个单词的首字母应该大写，例如 MyFirstJavaClass 。
- 方法名：所有的方法名都应该以小写字母开头。如果方法名含有若干单词，则后面的每个单词首字母大写。
- 源文件名：源文件名必须和类名相同。当保存文件的时候，你应该使用类名作为文件名保存（切记 Java 是大小写敏感的），文件名的后缀为 .java。（如果文件名和类名不相同则会导致编译错误）。
- 主方法入口：所有的 Java 程序由 public static void main(String[] args) 方法开始执行


