## 作业解答

- 将阿拉伯数字转换成中文数字

```Java
public class IfElseSwitchNoBreak {
    public static void main(String[] args) {

        int n = 5;

        String ret = n + "对应的汉字是";

        switch (n) {
            case 1:
                ret = ret + "壹";
            case 2:
                ret = ret + "贰";
            case 3:
                ret = ret + "叁";
            case 4:
                ret = ret + "肆";
            case 5:
                ret = ret + "伍";
            case 6:
                ret = ret + "陆";
            case 7:
                ret = ret + "柒";
            case 8:
                ret = ret + "捌";
            case 9:
                ret = ret + "玖";
            default:
                System.out.println("错误的值" + n + "。值需要大于等于1，小于等于9。");
        }
        System.out.println(ret);
    }
}
```

## 顺序结构

顺序结构的程序语句只能被执行一次。如果想要同样的操作执行多次，就需要使用循环结构。

Java 中有三种主要的循环结构：
- for
- while
- do…while

### for

- 程序在满足某条件时，重复执行某个代码块
- 初始语句在 for 循环开始前执行一次，以后不再执行；循环体表达式在每次循环体执行钱会执行，如果为 trux, 则执行循环体，否则循环结束；循环体后语句会在每次循环执行后被执行

```
for (初始语句；循环体条件表达式；循环体后语句){
   for 循环体
}
```

### 实例

- for 语句让程序简洁
- 条件布尔表达式可以用 for 语句外部的变量
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

- continue 语句可以结束当次循环，开始下次循环体执行
- break 语句结束整个循环

### while

while 是最基本的循环，它的结构为：

```
while( 条件表达式 ) {
  //循环体
}
```

- 条件表达式为 true，循环就会一直执行下去。为 false，循环结束。
- while 循环体中可以嵌套其他语句，包括 while 语句，for 语句，if-else 语句等。

#### 实例

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

### do-while

do-while 语句至少执行一次

```
do{
 //循环体
}while( 条件表达式 )
```

条件表达式在循环体的后面，所以语句块在检测表达式之前已经执行了。
如果表达式的值为 true，则语句块一直执行，直到表达式的值为 false。

#### 实例

```
public class Test {
   public static void main(String args[]){
      int x = 10;

      do{
         System.out.print("value of x : " + x );
         x++;
         System.out.print("\n");
      }while( x < 20 );
   }
}
```

### 死循环

死循环是无法结束的循环。
死循环是因为没有设置好循环结束的条件，要充分考虑边界情况。

## 总结

### 作业

- 用循环语句重写“找到可以被整除的数”
- 用循环语句重写“打印 26 个连续的字符”
