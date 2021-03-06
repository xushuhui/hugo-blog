---
title: Redis 详解（2）API

date: 2018-01-12 14:51:29
tags: ["Redis","NoSQL"]
categories: ["Redis"]
---

## 通用命令

### 通用命令

| 命令               | 说明                            | 时间复杂度 |
| ------------------ | ------------------------------- | ---------- |
| keys [pattern]     | 遍历所有 key                    | O(n)       |
| dbsize             | 计算 key 的总数                 | O(1)       |
| del key [key...]   | 删除指定 key-value              | O(1)       |
| exist key          | 检查 key 是否存在               | O(1)       |
| expire key seconds | key 在 seconds 秒后过期         | O(1)       |
| type key           | 返回 key 的类型                 | O(1)       |
| ttl key            | 查看 key 剩余的过期时间         | O(1)       |
| persist key        | 去掉 key 的过期时间（永不过期） | O(1)       |

### 数据结构和内部编码

#### redis object

- 数据类型（type）
string hash list set sorted set
- 编码方式（encoding）
raw int ziplist linkedlist hashmap intset
- 数据指针（ptr）
- 虚拟内存（vm）

### 单线程架构

#### 单线程为什么快

- 纯内存
- 非阻塞 IO
- 避免线程切换和竞态切换

#### 注意

- 一次只运行一条命令
- 拒绝长（慢）命令
keys,flushall,flushdb,slow lua script,muti/exec,operate big value(colletion)
- 实际上不是真正的单线程
fysnc file descriptor
close file descriptor

## 字符串（最大限制 512M)

### 结构

| key   | value   |
| ----- | ------- |
| ke    | val     |
| count | 1       |
| bits  | 1011101 |

### 场景

- 缓存
- 计数器
- 分布式锁
- 分布式 id 生成器

### 命令

| 命令                            | 说明                                            | 时间复杂度 |
| ------------------------------- | ----------------------------------------------- | ---------- |
| get key                         | 获取 key 对应的 value                           | O(1)       |
| set key value                   | 不管 key 是否存在，设置 key-value               | O(1)       |
| setnx key value                 | key 不存在，才设置                              | O(1)       |
| set key value xx                | key 存在才设置                                  | O(1)       |
| del key                         | 删除 key-value                                  | O(1)       |
| incr key                        | key 自增 1，如果 key 不存在，自增后 get(key)=1  | O(1)       |
| decr key                        | key 自减 1，如果 key 不存在，自减后 get(key)=-1 | O(1)       |
| incrby key k                    | key 自增 k，如果 key 不存在，自增后 get(key)=k  | O(1)       |
| decrby key k                    | key 自减 k，如果 key 不存在，自减后 get(key)=-k | O(1)       |
| mget key1 key2 key3...          | 批量获取 key 的 value，原子操作                 | O(n)       |
| mset key1 value1 key2 value2 .. | 批量设置 key-value                              | O(n)       |
| getset key newvalue             | set key newvalue 并返回旧 value                 | O(1)       |
| append key value                | 将 value 追加到旧 value                         | O(1)       |
| strlen key                      | 返回字符串长度                                  | O(1)       |
| incrbyfloat key float           | 增加 key 对应的值 float                         | O(1)       |
| getrange key start end          | 获取字符串指定下标所有值                        | O(1)       |
| setrange key index value        | 设置指定下标所有对应的值                        | O(1)       |

## 哈希

### 结构

| key    | field | value |
| ------ | ----- | ----- |
| user:1 | name  | tom   |
|        | age   | 20    |
|        | sex   | male  |

### 命令

| 命令                                     | 说明                                                             | 时间复杂度 |
| ---------------------------------------- | ---------------------------------------------------------------- | ---------- |
| hget key field                           | 获取 hash key 对应 field 的 value                                | O(1)       |
| hset key field value                     | 设置 hash key 对应 field 的 value                                | O(1)       |
| hdel key field                           | 删除 hash key 对应 field 的 value                                | O(1)       |
| hexists key field                        | 判断 hash key 是否有 field                                       | O(1)       |
| hlen key                                 | 获取 hash key field 数量                                         | O(1)       |
| hmget key field1 field2...               | 批量获取 hash key 对应一批 field 的 value                        | O(n)       |
| hmset key field1 value1 field2 value2... | 批量设置 hash key 对应一批 field 的 value                        | O(n)       |
| hgetall key                              | 返回 hash key 对应所有的 field 和 value                          | O(n)       |
| hvals key                                | 返回 hash key 对应所有 field 的 value                            | O(n)       |
| hkeys key                                | 返回 hash key 对应所有 field                                     | O(n)       |
| hmset key field1 value1 field2 value2... | 批量设置 hash key 对应一批 field 的 value                        | O(n)       |
| hsetnx key field value                   | 设置 hash key 对应的 field 的 value（如 field 已经存在，则失败） | O(1)       |
| hincrby key field intcounter             | hash key 对应的 field 的 value 自增 intcounter                   | O(1)       |
| hincrbyfloat key field floatcounter      | hincrby 浮点数版本                                               | O(1)       |

### 方案比较

string v1
- user:1=> {"name":tom,"age":20}

string v2
- user:1:name=>tom
- user:1:age=>20

hash
- user:1=>name=>tom
- user:1=>age=>20

| 命令      | 优点                         | 缺点                                     |
| --------- | ---------------------------- | ---------------------------------------- |
| string v1 | 编程简单，节约内存           | 序列化操作开销大，设置属性要操作整个数据 |
| string v2 | 直观，可以部分更新           | 内存占用较大，key 较分散                 |
| hash      | 直观，节省空间，可以部分更新 | 编程稍微复杂，ttl 不好控制               |

## 列表

### 结构

| key        | elements |
| ---------- | -------- |
| user:1:msg | a,b,c,d  |

### 特点

- 有序
- 可以重复
- 左右两边插入弹出

### 命令

| 命令                                   | 说明                                                        | 时间复杂度 |
| -------------------------------------- | ----------------------------------------------------------- | ---------- |
| rpush key value1 value2...             | 从列表右端插入值（1-N 个）                                  | O(1-n)     |
| lpush key value1 value2...             | 从列表左端插入值（1-N 个）                                  | O(1-n)     |
| lpop key                               | 从列表左侧弹出一个 value                                    | O(1)       |
| rpop key                               | 从列表右侧弹出一个 value                                    | O(1)       |
| linsert key before/afer value newValue | 在 list 指定的值前 / 后插入 newValue                        | O(n)       |
| lrem key count value                   | 根据 count 值，从列表删除所有 value 相等的项                | O(n)       |
| ltrim key start end                    | 按照索引范围修剪列表                                        | O(n)       |
| lrange key start end                   | 获取列表指定索引范围所有 value                              | O(n)       |
| lindex key index                       | 获取列表指定索引的 value                                    | O(n)       |
| llen key                               | 获取列表长度                                                | O(1)       |
| lset key index newValue                | 设置列表指定索引值为 newValue                               | O(n)       |
| blpop key timeout                      | lpop 阻塞版本，timeout 是阻塞超时时间，timeout=0 为永不阻塞 | O(1)       |
| brpop key timeout                      | rpop 阻塞版本，timeout 是阻塞超时时间，timeout=0 为永不阻塞 | O(1)       |

lrem key count value
- count>0，从左到右删除最多 count 个 value 相等的项
- count<0，从右到左删除最多 math.abs(count) 个 value 相等的项
- count=0，删除所有 value 相等的项

### 应用场景

- lpush+lpop=stack
- lpush+rpop=queue
- lpush+ltrim=capped collection
- lpush+brpop=message queue

## 集合

### 结构

| key           | elements         |
| ------------- | ---------------- |
| user:1:follow | music,sport,read |

### 特点

- 无序
- 无重复
- 集合间操作

### 命令

| 命令                                | 说明                                            | 时间复杂度 |
| ----------------------------------- | ----------------------------------------------- | ---------- |
| sadd key element                    | 向集合 key 添加 element（如果已存在，添加失败） | O(1)       |
| srem key element                    | 删除集合 key 中的 element                       | O(1)       |
| scard key                           | 计算集合大小                                    |            |
| sismember key element               | 判断 element 是否在集合中                       |            |
| srandmember key count               | 从集合中随机挑 count 个元素，不会破坏家伙       |            |
| spop key                            | 从集合中随机弹出一个元素，元素从集合移除        |            |
| smembers key                        | 获取集合所有元素                                |            |
| sdiff key1 key2                     | 差集                                            |            |
| sinter key1 key2                    | 交集                                            |            |
| sunion key1 key2                    | 并集                                            |            |
| sdiff/sinter/sunion + store destkey | 将差集、交集、并集结果报错在 destkey 中         |            |

### 应用场景

sadd=tagging
spop/srandmember=randon item
sadd+sinter=social graph

## 有序集合

### 结构

| key       | score | value |
| --------- | ----- | ----- |
| user:rank | 1     | tom   |
| user:rank | 5     | peter |

### 比较

| 有序集合      | 集合       |
| ------------- | ---------- |
| 无重复元素    | 无重复元素 |
| 有序          | 无序       |
| element+score | element    |

| 有序集合      | 列表       |
| ------------- | ---------- |
| 无重复元素    | 有重复元素 |
| 有序          | 有序       |
| element+score | element    |

### 命令

| 命令                                            | 说明                                 | 时间复杂度 |
| ----------------------------------------------- | ------------------------------------ | ---------- |
| zadd key score element                          | 添加 score 和 element（可以多对）    | O(logN)    |
| zrem key element                                | 删除元素（可以多个）                 | O(1)       |
| zscore key element                              | 返回元素分数                         | O(1)       |
| zincrby key increScore element                  | 增加或减少元素分数                   | O(1)       |
| zcard key                                       | 返回元素总个数                       | O(1)       |
| zrange key start end [WITHSCORES]               | 返回指定索引范围内的升序元素【分值】 | O(logN+m)  |
| zrangebyscore key minScore maxScore[WITHSCORES] | 返回指定分数范围内的升序元素【分值】 | O(logN+m)  |
| zcount key minScore maxScore                    | 返回有序集合内在指定分数范围内的个数 | O(logN+m)  |
| zremrangebyrank key start end                   | 删除指定排名内的升序元素             | O(logN+m)  |
| zremrangebyscore key minScore maxScore          | 删除指定分数内的升序元素             | O(logN+m)  |
