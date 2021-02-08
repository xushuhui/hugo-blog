---
title: Java 从零开始（12）变量和数组
draft: true
date: 2016-04-01 11:06:19
tags: ["Java"]
categories: ["Java"]

---

## 作业解答

- 用循环语句重写“找到可以被整除的数”

```
public class CalcDivBreak {
    public static void main(String[] args) {
        int dividend = 100;
        int divisor = 3;

        int foundCount = 0;
        int toBeFound = 5;
        for (int i = 0; i < 100; i++) {
            if (dividend % divisor == 0) {
                System.out.println(dividend + "可以整除" + divisor + "。商为" + dividend / divisor);
                foundCount++;
            }
            dividend++;

            if (foundCount >= toBeFound) {
                break;
            }
        }
        System.out.println("总共找到" + foundCount + "个可以整除" + divisor + "的数。");
    }
}
```

- 用循环语句重写“打印 26 个连续的字符”

## 数组

数组对于每一门编程语言来说都是重要的数据结构之一

* 数组是相同类型的变量的集合，所有元素都是同样的类型
* 可以指定数组包含的元素个数，最大是 int 的最大值
* 元素有固定的顺序
* 每个元素都要一个固定的编号，称之为索引（index）, 从 0 开始递增，类型是 int
* 可以读写数组中的任何一个元素

### 创建数组

声明一个数组变量，如 numbers[100] 来代替直接声明 100 个独立变量 number0，number1，....，number99。
数组元素类型 [] 变量名 = new 数组元素类型【数组长度】
通过变量名【索引】读写数组元素的值

#### 实例

``` Java
public class CreateArray {
    public static void main(String[] args) {
        int[] intArray = new int[9];

        System.out.println(intArray[2]);

        double[] doubleArray = new double[100];

        System.out.println(doubleArray[66]);

    }
}
```

## Java 注释

- 单行注释以 // 开始到这一行结束都是注释内容
- 注释可以是任何内容
- 可以在一行开始或结束后添加注释
- 注释不会对程序有任何影响

## 变量

固定的是内存地址，变化的是值
计算机如何使用内存访问变量？

* 内存是一堆白纸，只能通过页码编号访问，也是就内存地址
* 变量就是使用一个固定地址加上这个地址对应的内存。计算机读写地址对应的内存的值，完成变量的读写
* 变量名是地址，变量实就是内存地址的值

### 数组 = 数组变量 + 数组实体

* 数组变量【索引】就是在数组原有地址的基础上加上索引，获得想要的元素
* 所以索引都是从 0 开始，数组变量的地址就是数组第一个元素的地址

### 数组长度

- 数组变量。length 获得数组长度
- 数组创建后长度不可改变

### 数组索引过界和初始值

- 访问数组过界出错的例子，数组出界的错误是 IndexOutOfBoundException
- 如果没有把握数组是否会出界，把索引和数组长度比较。注意索引是从 0 开始
- 数组每个元素都有初始值，初始值和类型有关。对于数字类型，初始值是 0，布尔类型，初始值是 false

### 变量指向新数组

- 数组变量可以指向新的数组实体，这时候数组变量的值就是新数组实体的地址，这种数组变量的赋值操作，可以让变量指向新的数组。
- 如果没有别的数组变量指向原来的数组实体，那么原谅的数组实体不能访问
- 对应非基本类型变量，计算机要通过“两级跳”的方式访问，基本类型变量一跳就可以

## 作业

### 创建数组表示 6 门课成绩

* 创建一个大小为 6 的 double 类型数组代表分数
* 创建一个大小为 6 的 String 类型数组代表科目
* 为每门课创建一个 int 变量，值是这门课的成绩对应的数组的索引，以便操作每门课的成绩和名字
* 计算最高成绩
