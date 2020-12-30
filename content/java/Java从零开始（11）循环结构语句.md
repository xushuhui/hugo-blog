### 前言

### 顺序结构
顺序结构的程序语句只能被执行一次。如果您想要同样的操作执行多次,，就需要使用循环结构。

Java中有三种主要的循环结构：

- while 循环
- do…while 循环
- for 循环


#### while 循环
while是最基本的循环，它的结构为：
```
while( 布尔表达式 ) {
  //循环内容
}
```
只要布尔表达式为 true，循环就会一直执行下去。

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