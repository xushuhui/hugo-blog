### 前言
### 顺序执行
- 代码块的执行是顺序执行
- 只要程序运行过程中不出错，就会一行行向下顺序执行

### if-else语法 
```Java
if(布尔表达式){
   //如果布尔表达式的值为true
}else{
   //如果布尔表达式的值为false
}
```
- if-else语法，只有一个语句块被执行 
- 当 if 语句的布尔表达式值为 true，则执行 if 语句中的代码块，否则执行else 语句块

```Java
public class Test {
 
   public static void main(String args[]){
      int x = 30;
 
      if( x < 20 ){
         System.out.print("这是 if 语句");
      }else{
         System.out.print("这是 else 语句");
      }
   }
}
```
### 总结