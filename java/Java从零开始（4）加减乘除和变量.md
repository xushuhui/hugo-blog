### 前言
Java中所有的数据都有类型，类型决定了存储的形式和占用的存储空
间。举个例子：
- 微博
- 博客
- 连载小说
#### 加减乘除

int 用来表示一个整数，取值范围在 -2^31~2^31-1。计算出来-2147483648~22147483647
我们先从加减乘除四则运算开始
``` 

public class Math {
    public static void main(String[] args) {
        System.out.println(1 + 2);
        System.out.println(2 - 1);
        System.out.println(2 * 1);
        System.out.println(2 / 1.0);

        System.out.println(1 + 2 * 2 / 4.0 + (5 + 6) / 3.0);
    }
}
```

#### 变量操作
如果每次都在代码中写一个数字去运算就太麻烦了，因此我们引入变量的概念，变量是用来存储数据的一个标识，有了变量我们就不用多次写一个数字了，用变量指代。
``` 

public class Variable1 {
    public static void main(String[] args) {
        int a = 1; 
        int b = 2;
        int c = 3;
        int x = 0;

        int y = a * x + b * (x * x) + c * (x * x * x);

        System.out.println(y);
    }
}
```

#### Java 标识符

Java 所有的组成部分都需要名字。类名、变量名以及方法名都被称为标识符。

* 所有的标识符都应该以字母（A-Z 或者 a-z）, 美元符（$）、或者下划线（_）开始
* 首字符之后可以是字母（A-Z 或者 a-z）, 美元符（$）、下划线（_）或数字的任何字符组合
* 关键字不能用作标识符
* 标识符是大小写敏感的

合法标识符举例：age、$salary、_value、__1_value
非法标识符举例：123abc、-salary

#### Java 关键字

下面列出了 Java 关键字。这些保留字不能用于常量、变量、和任何标识符的名称。

#### 表达式、语句和代码块

* 表达式（experssion）: Java中最基本的一个运算。比如一个加法运算表达式。1+2是一个表达式。
* 语句：类似平常说话的一句话，由表达式组成，以；结束。int a = 3; y = a + 9; System.out.println(y); 都是语句
* 代码块：一对大括号括起来的就是一个代码块

#### 区分大小写

* 关键字和标示符都是区分大小写的
* 类名必须与文件名一致，包括大小写要求
* 使用变量时，名字必须和声明变量的标示符大小写一致
* 方法名也区分大小写。main和Main是两个名字
* 类型也区分大小写。int是数据类型lnt则不是
* System.out.printIn可以被Java认识，SYSTEM. Out. Println就不可以

### 总结

#### 思考

变量要先赋值后使用

* 不给变量赋值代表什么？
* 不赋值就使用会怎么样？
