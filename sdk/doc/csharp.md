# 生成C#版本sdk

生成条件：
- darabonba 安装完成
- npm 安装完成
    - npm 换源（可选）
- node-typescript 安装完成（linux）


生成指令(在`/sdk`目录下运行)：
```
dara codegen ts ts
```
dara codegen 运行完后 /sdk/ts 下会生成 /src 目录、package.json 和 tsconfig.json。


## 安装 sdk 依赖

在 /sdk/ts 下运行 `npm install` 即可

## 生成测试代码

所有测试代码的 dara 版本均在 /sdk/demo 下的 demo.dara 中，每个 api 都有单独的测试函数，实际使用时在 main 函数中调用即可。

下面以 CreateEventBus 接口为例生成 ts 测试代码

进入 /sdk/demo/ 下
```
dara install
dara codegen ts ts
```

生成完毕后可在 /sdk/demo/ts/src 下看到 client.ts

## 添加 main 函数
由于不同语言 main 函数格式不同，需要手动添加 main 函数来执行测试函数。仍以 CreateEventBus 为例，
在 /sdk/demo/ts/src 下添加 main.ts。其内部代码如下：

```ts
import Client from './client'

let c = new Client()
c.testCreateEventBus()
```

## 安装 demo 依赖

由于 demo 中引用的 sdk client 尚未发布，所以需要在 /sdk/demo/ts/package.json 中删除依赖：
```js
"dependencies": {
    ...
    "@org.apache.rocketmq/eventbridge-sdk": "0.0.0",（删除该行）
    ...
},
```
同时，需要在 /sdk/demo/ts/src/client.ts 中将 SDKClient 的引用路径改为本地路径为：
```ts
import SDKClient, * as $SDKClient from '../../../ts/src/client';
```

之后在 /sdk/demo/ts 目录下执行 `npm install` 安装依赖即可

## 编译运行

在 /sdk/demo/ts 目录下执行 `tsc` 命令即可编译，编译完成会生成 /sdk/demo/ts/dist 目录。

进入 /sdk/demo/ts/demo/ts/src 目录，命令行中执行 `node main.js` 即可执行测试代码。

## 测试效果

成功在本地部署 RocketMQ（nameServer + broker） 和 Eventbridge 后，运行测试代码即可（EventBridge 监听端口需为默认的 7001）。返回体的 body 会自动输出到命令行。

以 listEventBuses API 为例：

```js
200
{"eventBuses":[{"eventBusName":"add-bus"},{"description":"A demo bus.","eventBusName":"demo-bus"}],"total":2,"requestId":"fa5d4ab6-4961-4c2c-a4b9-2845d44f8d82","maxResults":2}
```

