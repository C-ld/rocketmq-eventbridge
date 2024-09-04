# 生成Go版本sdk

生成条件：
- darabonba 安装完成
- swift 安装完成

生成指令(在`/sdk`目录下运行)：
```
dara codegen swift swift 
```
dara codegen 运行完后 /sdk/swift 下会生成 /Sources目录 和 配置文件。


## 生成测试代码

所有测试代码的 dara 版本均在 /sdk/demo 下的 demo.dara 中，每个 api 都有单独的测试函数，实际使用时在 main 函数中调用即可。

下面以 EventBus Controller 为例生成 go 测试代码

进入 /sdk/demo/EventBus 下
```
dara install
dara codegen swift swift
```

生成完毕后可在 /sdk/demo/go/client 下看到 client.go

## 添加 main 函数
由于不同语言 main 函数格式不同，需要手动添加 main 函数来执行测试函数。仍以 CreateEventBus 为例，
在 /sdk/demo/go/ 添加 main.go，并在其中写入如下代码：

```go
    func main(){
        Demo demo = new Demo();
        demo.testCreateEventBus();
    }
```

## 测试效果

成功在本地部署 RocketMQ（nameServer + broker） 和 Eventbridge 后，运行测试代码即可（EventBridge 监听端口需为默认的 7001）。返回体的 body 会自动输出到命令行。

以 listEventBuses API 为例：

```js
200
{"eventBuses":[{"eventBusName":"add-bus"},{"description":"A demo bus.","eventBusName":"demo-bus"}],"total":2,"requestId":"fa5d4ab6-4961-4c2c-a4b9-2845d44f8d82","maxResults":2}
```

