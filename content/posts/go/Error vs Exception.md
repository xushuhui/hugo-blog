---
title: Error Type
date: 2016-07-01 13:59:58
tags: ["HTTP","网络协议","编程基础"]
categories: ["HTTP"]
---

## Error

Go error  就是普通的一个接口，普通的值。
[http://golang.org/pkg/builtin/#error](http://golang.org/pkg/builtin/#error)

```go
type error interface {
    Error() string
}
```

我们经常使用 errors.New() 来返回一个 error 对象。
[https://golang.org/src/errors/errors.go](https://golang.org/src/errors/errors.go)

```go
type errorString struct {
	s string
}

func (e *errorString) Error() string {
	return e.s
}
```

基础库中大量自定义的 error。
[https://golang.org/src/bufio/bufio.go](https://golang.org/src/bufio/bufio.go)

```go
var (
	ErrInvalidUnreadByte = errors.New("bufio: invalid use of UnreadByte")
	ErrInvalidUnreadRune = errors.New("bufio: invalid use of UnreadRune")
	ErrBufferFull        = errors.New("bufio: buffer full")
	ErrNegativeCount     = errors.New("bufio: negative count")
)
```

errors.New() 返回的是 内部 errorString 对象的指针。

```go
func New(text string) error {
	return &errorString{text}
}
```

```go
package main

import (
	"errors"
	"fmt"
)

type errorString string

func (e errorString) Error() string {
	return string(e)
}

func New(text string) error {
	return errorString(text)
}

var ErrNamedType = New("EOF")
var ErrStructType = errors.New("EOF")
func main()  {
	if ErrNamedType == New("EOF"){
		fmt.Println("Named Type Error")
	}
	if ErrStructType == errors.New("EOF"){
		fmt.Println("Struct Type Error")
	}
}

```

## Error vs Exception

各个语言的演进历史：

### C

- 单返回值，一般通过传递指针作为入参，返回值为 int 表示成功还是失败。

```
    ngx_int_t ngx_create_path(ngx_file_t *file, ngx_path_t *path);

```

### C++

- 引入了 exception，但是无法知道被调用方会抛出什么异常。

### Java

- 引入了 checked exception，方法的所有者必须申明，调用者必须处理。在启动时抛出大量的异常是司空见惯的事情，并在它们的调用堆栈中尽职地记录下来。Java 异常不再是异常，而是变得司空见惯了。它们从良性到灾难性都有使用，异常的严重性由函数的调用者来区分。
![image](https://tvax1.sinaimg.cn/large/a616b9a4gy1gmu06q3ujcj20r405jq37.jpg)

Go 的处理异常逻辑是不引入 exception，支持多参数返回，所以你很容易的在函数签名中带上实现了 error interface 的对象，交由调用者来判定。

**如果一个函数返回了 value, error，你不能对这个 value 做任何假设，必须先判定 error。唯一可以忽略 error 的是，如果你连 value 也不关心。**
Go 中有 panic 的机制，如果你认为和其他语言的 exception 一样，那你就错了。当我们抛出异常的时候，相当于你把 exception 扔给了调用者来处理。
**比如，你在 C++ 中，把 string 转为 int，如果转换失败，会抛出异常。或者在 java 中转换 string 为 date 失败时，会抛出异常。**

```
throw new exception();
```

Go panic 意味着 fatal error（就是挂了）。不能假设调用者来解决 panic，意味着代码不能继续运行。

使用多个返回值和一个简单的约定，Go 解决了让程序员知道什么时候出了问题，并为真正的异常情况保留了 panic。

```
panic("this is a error")
```

对于真正意外的情况，那些表示不可恢复的程序错误，例如索引越界、不可恢复的环境问题、栈溢出，我们才使用 panic。对于其他的错误情况，我们应该是期望使用 error 来进行判定。

- 简单。
- 考虑失败，而不是成功 (Plan for failure, not success)。
- 没有隐藏的控制流。
- 完全交给你来控制 error。
- Error are values。
