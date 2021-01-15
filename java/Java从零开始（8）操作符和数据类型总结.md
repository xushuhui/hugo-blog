### 作业解答
- 打印26个连续的字符
#### 程序中的知识点
- 自动类型转换：char到int
- 强制类型转换：int到char
- 字符和数字的对应关系，字符集和编码
- 字符串的加法：任何数据和字符串都可以相加，将这个数据的字符串和另一个字符串拼接起来
- 自增操作符

```Java
public class Print26Chars {
    public static void main(String[] args) {
        char ch = 'A';
        int num = ch;
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));
        System.out.println(num + "\t" + ((char) num++));

    }
}
```
### 自增和自减操作符
- 自增自减操作符是可以直接改变变量值的操作符
- 前加加和前咸
- 后加加和后减减
- 其实是一个+1操作和一个赋值操作的缩写
```Java
public class IncreaseDecrease {
    public static void main(String[] args) {
        int a = 1;
        System.out.println("a++=" + a++);
        System.out.println("a=" + a);
        a = 1;
        System.out.println("++a=" + (++a));
        System.out.println("a=" + a);


        int b = 10;
        System.out.println("b--=" + b--);
        System.out.println("b=" + b);

        b = 10;
        System.out.println("--b=" + --b);
        System.out.println("b=" + b);

    }
}
```


### 总结
#### 思考
如何更简便处理程序运算，不用写多行语句