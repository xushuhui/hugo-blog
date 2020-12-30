### 前言

### 字符集和编码介绍

#### 什么是字符集（Charset）

* 字符集就是字符的集合。一般会包含一种语言的字符。比如GBK，是包含所有

常用汉字字符的字符集。ASCII是包含英文字符的字符集

* 字符就是Java中的char，char是character的简写。

#### 什么是编码（Encoding）

* char代表一个字符，char的本质也是数字。将数字映射到字符，就叫编码。
* 将一个字符集映射擞字就是给这个字符集编码。编码是有标准的，所有的计

算机系统按照同一个编码标准执行·

* 有时候编码和字符集会混用

#### 常用的字符集简介

* ASCII码，ASCII表：https://baike.baidu.cnm/item/ASClI/309296#3
* unicode包含界上所有常用字符，编码也有几种，包括UTF-8（8-bit

UnicodeTransformationFormat），UTF-16等。

* Unicode，GBK等所有常用的字符集，都会兼容ASCII。举个例子，字符A

在这些所有常用的字符集里，都是对应数字65。

#### Java中的字符集

* Java中用的是UTF-16编码的Unicode.
* UTF-16用16个bit即两个byte，这也是char占用两个byte的原因。当把

char转成数字的时候需要用int

### ASCII码和转义符（escape character）

#### 如何输出特殊字符

* ASCII码+char，通过ASCII表可以找到需要的字符对应的数字·将这个数字转换为char

然后输出这个char。ASCII表：https://baike-baidu.com/item/ASCll/309296#3

* 转义符·转义符用来给字符赋值，也可以用在字符串里面，作为字符串中的一个字符·

#### 转义符语法和常用的转义符

* \n，换行符
* \"，, 双引号
* \t，制表符
* \uXXX，unicode编码对应的字符

``` 
public class ComplexCharInString {
    public static void main(String[] args) {
        String content = "a\tb\tcc\tee\t";
        String align = "1111222233334444";
        System.out.println(content);
        System.out.println(align);

        int a = 65;
        char cha = (char) a;
        char zang = '\u81e7';
        System.out.println(cha);
        System.out.println(zang);
    }
}
```

### 字符串的"加法"

#### 将变量穿插在字符串中输出

* 字符串可以和任何类型进行加法运算，则会将这个值的字符拼接到字

符串上。

* 字符串也可以使用+=操作符来拼接
* 字符串的加法运算符符合加法运算符本身的优先级

#### 字符串不是Java中的基本数据类型

* 字符串类型的名字叫做string
* 虽然String不是Java中的基础类型，但是也可以使用类似的浯法String str="abc"; 来创建。开始的时候将其当成基础类型，更容易理解
* String不是Java中的保留字。

#### String的加法不会改变原String变量的值，改变其值要用赋值语句

``` Java
public class StingConcat {
    public static void main(String[] args) {
        int a = 10;
        int b = 20;
        int c = a + b;
        System.out.println("a + b=" + c);

        boolean aBiggerThanB = a > b;
        System.out.println("a > b 是" + aBiggerThanB + "的");

        System.out.println("a + b=" + a + b);

        System.out.println("a + b =" + (a + b));

        System.out.println("a * b=" + a * b);

    }
}
```

### 总结

#### 作业

* 打印26个连续的字符
