# 生成Python版本sdk

生成条件：
- darabonba 安装完成
- python 安装完成

生成指令(在`/sdk`目录下运行)：
```
dara codegen python python
```
dara codegen 运行完后 /sdk/python 下会生成 源代码 和 setup.py，此时可以通过 setuptools 安装 sdk 包。

## sdk 打包安装

在 /sdk/python 目录下运行 `python setup.py sdist` 打包 sdk。安装成功时，/sdk/python 目录下会生成 dist 目录，进入该目录可看到打包文件 rocketmq_eventbridge-1.0.0.tar.gz 。此时通过 pip 安装 sdk 即可。

```bash
# in /sdk/python/
pip install /dist/rocketmq_eventbridge-1.0.0.tar.gz
```

此时可生成测试代码调用 sdk 进行测试。


## 生成测试代码

所有测试代码的 dara 版本均在 /sdk/demo/{Controller_Name}/ 下的 dara 文件中，每个 api 都有单独的测试函数，实际使用时调用相应测试函数即可。

下面以 EventBus Controller 为例生成 python 测试代码

进入 /sdk/demo/EventBus/ 下

```bash
dara install
dara codegen python python
```

生成完毕后可在 /sdk/demo/EventBus/python/rocketmq_eventbridge 下看到 demo.py，其为主要测试代码。
由于目前生成器的局限，demo.py 中 Demo class 的 __init__ 方法需要手动修正。具体而言，需要把所有的 `undefined` 替换为 `self` 即可。修改效果如下：
```py
    def __init__(self):
        self._endpoint = '127.0.0.1:7001'
        self._config = open_api_models.Config(
            endpoint = self._endpoint
        )
        self._sdk_client = SDKClientClient(self._config)
```

修改完毕后，在文件末尾添加测试函数调用如下：

```py
demo = Demo()
demo.test_list_event_buses()
```

## 测试效果

成功在本地部署 RocketMQ（nameServer + broker） 和 Eventbridge 后，运行测试代码即可（EventBridge 监听端口需为默认的 7001）。返回体的 body 会自动输出到命令行。

以 listEventBuses API 为例，会在控制台打印如下结果：

```sh
[LOG] {"eventBuses":[{"description":"A demo bus.","eventBusName":"demo-bus"},{"eventBusName":"newBus"}],"requestId":"186a70c4-1201-45dd-8683-a6cf49433631","total":2,"maxResults":2}
[LOG] test end!
```

