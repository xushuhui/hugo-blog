### 前言

### 顺序结构
顺序结构的程序语句只能被执行一次。如果想要同样的操作执行多次,就需要使用循环结构。

Java中有三种主要的循环结构：
- for 
- while 
- do…while 

#### for
- 程序在满足某条件时，重复执行某个代码块
- 初始语句在for循环开始前执行一次，以后不再执行；循环体表达式在每次循环体执行钱会执行，如果为trux,则执行循环体，否则循环结束；循环体后语句会在每次循环执行后被执行
```
for (初始语句；循环体条件表达式；循环体后语句){
   for 循环体
}
```
#### 实例
- for语句让程序简洁
- 条件布尔表达式可以用for语句外部的变量
- 循环体执行后的语句可以有多个逗号分开的表达式
```
public class SimpleFor {
    public static void main(String[] args) {
        for (int i = 0; i < 10; i++) {
            System.out.println("i的值是：" + i);
        }
    }
}
```
- continue语句可以结束当次循环，开始下次循环体执行
- break语句结束整个循环
#### while 
while是最基本的循环，它的结构为：
```
while( 条件表达式 ) {
  //循环体
}
```
条件表达式为 true，循环就会一直执行下去。为false，循环结束

##### 实例
```
public class Test {
   public static void main(String args[]) {
      int x = 10;
      while( x < 20 ) {
         System.out.print("value of x : " + x );
         x++;
         System.out.print("\n");
      }
   }
}
```
### 总结
#### 作业
- 用循环语句重写“找到可以被整除的数”
- 用循环语句重写“打印26个连续的字符”