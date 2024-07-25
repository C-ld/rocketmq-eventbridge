# Daranbonba

通过 darabonba 生成的多语言 SDK 实现对 eventBridge 进行 RPC 管控

# 多语言 SDK 生成

## dara 安装

TODO

## 生成代码

以 java 为例，在 `/path/to/eventbridge/sdk/` 下，执行以下命令：

```sh
#安装依赖
dara install
#生成 java 版本到 ./java 目录下
dara codegen java ./java

```


# SDK 使用参考

以 Java 为例

dara codegen 运行完后 ./java 下会生成 src 目录和 pom.xml，此时可以通过 maven 安装依赖。

暂不具备自动生成测试代码的能力，需要手动加（参考 java 样例下的 /src/test）

成功在本地部署 RocketMQ（nameServer + broker） 和 Eventbridge 后，运行测试代码即可（EventBridge 监听端口需为默认的 7001）。返回体的 body 会输出到命令行。

以 listEventBuses API 为例：

```sh
200
{"eventBuses":[{"eventBusName":"add-bus"},{"description":"A demo bus.","eventBusName":"demo-bus"}],"total":2,"requestId":"fa5d4ab6-4961-4c2c-a4b9-2845d44f8d82","maxResults":2}

```

