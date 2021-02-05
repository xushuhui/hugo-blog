---
title: Java 从零开始（5）基本数据类型

date: 2016-04-01 11:06:19
tags: ["Java"]
categories: ["Java"]

---

## 前言

上一节提到了 int 类型，int 类型有范围限制

## 基本数据类型

### 进制

#### 十进制

* 每一位可以是 0～9 这 10 个值。到 10 进位。一百用十进制表示就是 100，十就是 10

#### 二进制

* 每一位可以是 0 和 1 这两个值，到 2 进位。 一百用二进制表示就是 1100100，十就是 1010

#### 十六进制

* 每一位可以是 0~F 这 16 个值，到 16 进位 - 一百用十六进制表示就是 64，十就是 A

#### bit 和 byte

* 一个二进制的叫做一个 bit。网络带宽中的单位，都是 bit
* 八个二进制的位，组成一个 byte。硬盘等存储的单位都是 byte
* byte 是计算机中基本的衡量存储的单位，计算机在对外使用时不会用 bit 作为划分存槠的单位。

### 代码演示

```
public class LiteralNumber {
    public static void main(String[] args) {
        int a = 05;
        int b = 011;
        int c = 0xF;
        int d = 0x11;

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);
        System.out.println(d);
    }
}
```

### 整数类型

* byte 占用 1 个 byte 值域是 128～127
* short 占用 2 个 byte，值域是 32768～32767
* int 占用 4 个 byte，值域是 2147483M8- 21474837。Java 中整数缺省是 int 类型
*  long 占用 8 个 byte，值域是 9223372036854774808、9223372036854774807

### 浮点（小数）类型

 - float 占用 4 个 byte，有精度，值域复杂±340282346638528859811704183484516925440 。
 - double 精度是 float 的两倍，占用 8 个 byte。 Java 中浮点数缺省是 double 类型

### 布尔和字符数据类型

* boolean 占用 1 个 byte，值域是 true, faIse.
* char 占用 2 个 byte, 值域是所有字符 -

### 使用各种基本数据类型

```
public class PrimaryTypes {
    public static void main(String[] args) {
        byte byteVar = 100;
        System.out.println(byteVar);

        short shortVar = 30000;
        System.out.println(shortVar);

        int intVar = 1000000000;
        System.out.println(intVar);

        long longVar = 80000000000L;
        System.out.println(longVar);

        float floatVar = 100.0000000666F;
        System.out.println(floatVar);

        double doubleVar = 100.0000000666;
        System.out.println(doubleVar);

        boolean booleanVar = true;
        System.out.println(booleanVar);

        char charVar = 'a';
        System.out.println(charVar);

    }
}
```

### 数据类型自动转换

* 自动类型转换
    - 不会出现问题的类型转换，编程语言可以做自动类型转换，比如低精度数字向高精度数字转换
    - 自动类型转换可以发生在算数运算，也可以发生在赋值

* 数值精度顺序：double>float>long>int>short>byte

* char 可以转换成 int

* char 是无符号数，值域超出了 short 表示范围，所以不可以自动转为 short

    ```java
    public class AutoConvert {
        public static void main(String[] args) {
            int intVal = 99;
            long longVal = intVal;
            long longVal2 = intVal + 1;
            System.out.println(longVal2);

            float floatVal = 11.32f;
            double doubleVal = floatVal;
            double doubleVal2 = floatVal * 2;
            System.out.println(doubleVal2);

            doubleVal = longVal;
            doubleVal = intVal;

            floatVal = intVal;
            floatVal = longVal;

            char ch = 'A';
            int chNum = ch;
            int chNumCalc = ch + 10;
            System.out.println(ch);
            System.out.println(chNum);

        }
    }
    ```

### 强制数据类型转换

* 强制类型转换
    - 可能出现问题的类型转换。需要使用强制类型转换，比如高精度数值向低精度数值转换
    - 强制类型转换也是操作符
    - 语法是用小括号括起来的目标类型放在被转换的值前面
    - 强制转换会造成数据精度丢失
* 数值溢出
    - 数值计算一旦溢出，结果将失去其原有意义，比如两个正数会加出负数

    - 要对能够处理的值有个大概估计

      ```

      public class ForceConvert {
          public static void main(String[] args) {
              int intVal = 99;
              long longVal = 19999;
              intVal = (int) longVal;

              float floatVal = 11.32f;
              double doubleVal = 3344556.789;
              floatVal = (float) doubleVal;

              int a = 65;
              char b = (char) a;

          }
      }
      ```

## 总结

### 从数值计算溢出理解程序员和编程语言责任分界线

* 编程语言作用
    - 负责按照语法执行
    - 负责和计算机交互
* 程序员任务
    - 负责理解问题
    - 理解程序，并将问题转换为程序
    - 编程语言不负责解决问题，程序员负责解决问题
