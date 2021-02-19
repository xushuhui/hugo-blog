---
title: Java 从零开始（6）运算符
draft: true
date: 2016-04-01 11:06:19
tags: ["Java"]
categories: ["Java"]

---

## 前言

* 运算符对一个或者多个值进行运算并得出一个运算结果。 - 运算符的运算结果类型有的是固定的，有时候会根据被计 算的值变化。比如两个 int 相加，结果的类型就是 int. 两 个 byte 相加，返回值的类型就是 byte

* 混淆点：除赋值运算符外，运算符本身不会更改变量的值

### 取模运算符 %

* 用来计算余数

*  负数也可以被取模

* 小数也可以取模

 整数的除法运算

> int 除以 int 还是 int，不会变成浮点数

```
public class ModCalc {
    public static void main(String[] args) {
        int num = 10;

        System.out.println(num % 2);
        System.out.println(num % -3);
        System.out.println(num % 4);
        System.out.println(num % 5);
        System.out.println(num % -6);
    }
}
```

### 比较运算符

\> 、> =、<、<=、!=、==

```
public class CompareOprt {
    public static void main(String[] args) {
        int a = 10;
        int b = 15;
        int c = 10;

        System.out.println(a > b);
        System.out.println(a >= b);
        System.out.println(a < b);
        System.out.println(a <= b);
        System.out.println(a != b);

        System.out.println(a != c);
        System.out.println(a >= c);
        System.out.println(a <= c);
        System.out.println(a == b);
        System.out.println(a == c);

    }
}
```

### 布尔运算符

* ！叫做非运算符，not 运算符。 !true 是 false, !false 是 true.
* & 叫且算符，and 运算符。true&true 是 true，true&false 是 false.
* && 叫做且目运算符。andand 运算符。运算结果和 & 一样 -
* |叫做或运算符，or 运算符。true|false 是 true，false 丨 false 是 false，true|true 是 true
*  ||叫做或或运算符，oror 运算符， 运算结果和|一样

```Java
public class BooleanOprt {
    public static void main(String[] args) {
        boolean a = true;
        boolean b = false;

        System.out.println(a && b);
        System.out.println(a & b);
        System.out.println(a || b);
        System.out.println(a | b);

        System.out.println(a || (10 / 0 > 1));
        System.out.println(a | (10 / 0 > 1));

    }
}
```

### 小括号运算符

小括号运算符内可以包含任何运算符，决定运算符的顺序

```
public class ParentOprt {
    public static void main(String[] args) {
        int a = 10;
        int b = 88;
        boolean c = ((a + b) * a - 9 * (a + b)) == (a + b);

        System.out.println(c);
    }
}
```

### 运算符优先级

1. ()
2. !
3. *, /, %
4. +, -
5. \> , >=, <, <=
6. ==
7. !=
8. &&, &, ||, |
9. =

```
public class PriorityExample {
    public static void main(String[] args) {
        int a = 1 + 3;
        int b = 2;
        boolean both = a > 0 && b > 0;
        System.out.println(both);

        boolean result = a < b + 5;
        System.out.println(result);

    }
}
```

### 思考

* 为什么等号的优先级最低？
* 为什么布尔运算符的优先级低于比较运算符？
* 为什么比较运算符的优先级比算数运算低？

### 位运算符

字面值的八进制和十六进制
以 0 开头的整数为八进制

* 05 就是十进制的 5
* 011 就是十进制的 9

以 0x 开头的整数位十六进制

* 0xF 就是十进制的 15
* 0x11 就是十进制的 17

### 按位运算符

* 按位并（AND）：&
* 按位或（OR）: |
* 按位异或（XOR）: ^
* 按位取反：~
* 掩码（MASK）

```
public class BitCalc {
    public static void main(String[] args) {
        int a = 0xF8;
        int b = 0xF4;
        int c = 0xFF;
        System.out.println(a & b);
        System.out.println(a | b);
        System.out.println(a ^ b);

        System.out.println(~c);
    }
}
```

### 位移运算符

* \>>：符号位不动，其余位右移，符号位后边补 0，又称带符号右移
* \>>>：符号位一起右移，左边补 0，又称无符号右移
* <<：左移，右边补 0。左移没有带符号位一说，因为符号位在最左侧

```
public class BitShift {
    public static void main(String[] args) {
        int a = 0x400;
        System.out.println(a);
        System.out.println(a >> 1);
        System.out.println(a >> 2);

        System.out.println(a << 1);
        System.out.println(a << 2);

        int b = -0x400;
        System.out.println(b);
        System.out.println(b >> 1);
        System.out.println(b >> 2);

        System.out.println(b << 1);
        System.out.println(b << 2);

        System.out.println(b >>> 1);
        System.out.println(b >>> 2);

    }
}
```

### 计算并赋值运算符

* 作用是让代码更简洁，a=a+10 简化 a+=10
* +=、-=、 /=、 *=、 %=、 &=、^=、 |=、 <<=、 >>=、 >>>=

## 总结

按位运算符不会改变原本的变量的值
位移运算符不会改变原本的变量的值

### 作业

- 任意两个数作为除数和被除数，用取模运算符计算出余数
- 被除数不断加一的时候计算余数
