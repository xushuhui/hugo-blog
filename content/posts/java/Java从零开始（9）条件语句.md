---
title: Java 从零开始（9）条件语句

date: 2016-04-01 11:06:19
tags: ["Java"]
categories: ["Java"]

---

## 前言

## 顺序执行

- 代码块的执行是顺序执行
- 只要程序运行过程中不出错，就会一行行向下顺序执行

## if

### 语法

```Java
if(布尔表达式)
{
   //如果布尔表达式为true将执行的语句
}
```

- 如果布尔表达式的值为 true，则执行 if 语句中的代码块，否则执行 if 语句块后面的代码。

### 实例

```
public class Test {

   public static void main(String args[]){
      int x = 1;

      if( x < 2 ){
         System.out.print("这是 if");
      }
   }
}
```

## if-else

### 语法

```Java
if(布尔表达式){
   //如果布尔表达式的值为true
}else{
   //如果布尔表达式的值为false
}
```

- if-else 语法，只有一个语句块被执行
- 当 if 语句的布尔表达式值为 true，则执行 if 语句中的代码块，否则执行 else 语句块

### 实例

```Java
public class Test {

   public static void main(String args[]){
      int x = 3;

      if( x < 2 ){
         System.out.print("这是 if ");
      }else{
         System.out.print("这是 else");
      }
   }
}
```

## if...else if...else 语句

if 语句后面可以跟 else if…else 语句，这种语句可以检测到多种可能的情况。

- if 语句至多有 1 个 else 语句，else 语句在所有的 else if 语句之后。
- if 语句可以有若干个 else if 语句，它们必须在 else 语句之前。
- 一旦其中一个 else if 语句检测为 true，其他的 else if 以及 else 语句都将跳过执行。

```Java
public class Test {
   public static void main(String args[]){
      int x = 3;

      if( x == 1 ){
         System.out.print("X is 1");
      }else if( x == 2 ){
         System.out.print("X is 2");
      }else if( x == 3 ){
         System.out.print("X is 3");
      }else{
         System.out.print("这是 else ");
      }
   }
}
```

## 作业

### 求最大的数

- 用 if-else 语句求 a,b 和 c 三个数的最大数
