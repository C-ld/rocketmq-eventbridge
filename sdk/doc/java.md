# 生成Java版本sdk

生成条件：
- darabonba 安装完成
- JDK 8 安装完成
- maven 安装完成

生成指令(在`/sdk`目录下运行)：
```
dara codegen java java
```
dara codegen 运行完后 /sdk/java 下会生成 /src 目录和 pom.xml，此时可以通过 maven 安装依赖。

## POM修改和依赖安装

darabonba 生成 maven 项目时会自动生成 pom.xml，但其中的一些配置需要修改。这里由于需要使用 JDK 8 运行代码，因此需将 maven-compiler-plugin 配置修改如下

```js
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
    <version>3.6.1</version>
    <configuration>
        <source>8</source>
        <target>8</target>
    </configuration>
</plugin>

```
另外由于需要把 sdk 安装到本地 maven 仓库，所以配置跳过 gpg 签名，继续修改 POM 如下：
```js
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-gpg-plugin</artifactId>
    <version>1.6</version>
    <configuration>
        <skip>true</skip>
    </configuration>
    <executions>
        <execution>
        <id>sign-artifacts</id>
        <phase>verify</phase>
        <goals>
            <goal>sign</goal>
        </goals>
        </execution>
    </executions>
</plugin>
```

修改完成后，可在 /sdk/java 目录下运行 `mvn install` 安装依赖。安装成功时输出应包含如下内容：
```bash
$ mvn install
...
...
[INFO] Installing /root/rocketmq-eventbridge/sdk/java/target/sdk-0.0.0.jar to /root/.m2/repository/org/apache/rocketmq/eventbridge/sdk/0.0.0/sdk-0.0.0.jar
[INFO] Installing /root/rocketmq-eventbridge/sdk/java/pom.xml to /root/.m2/repository/org/apache/rocketmq/eventbridge/sdk/0.0.0/sdk-0.0.0.pom
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  2.691 s
[INFO] Finished at: 2024-08-17T17:21:58+08:00
[INFO] ------------------------------------------------------------------------
```

此时 sdk 已打包安装到本地仓库，可生成测试代码调用。


## 生成测试代码

所有测试代码的 dara 版本均在 /sdk/demo 下的 demo.dara 中，每个 api 都有单独的测试函数，实际使用时在 main 函数中调用即可。

下面以 CreateEventBus 接口为例生成 java 测试代码

进入 /sdk/demo/ 下
```
dara install
dara codegen java java
```

生成完毕后可在 /sdk/demo/java/src/.../demo 下看到 Demo.java

## 添加 main 函数
由于不同语言 main 函数格式不同，需要手动添加 main 函数来执行测试函数。仍以 CreateEventBus 为例，
在 Demo.java 的 Demo class 中添加如下代码

```java
    public static void main(String args[]){
        try {
            Demo demo = new Demo();
            demo.testCreateEventBus();
        } catch(Exception e){
            // TODO: deal with exception
        }
    }
```

> 在 /sdk/demo/java 路径下执行 mvn compile，编译通过后即可在 VS Code 中进行测试

## 测试效果

成功在本地部署 RocketMQ（nameServer + broker） 和 Eventbridge 后，运行测试代码即可（EventBridge 监听端口需为默认的 7001）。返回体的 body 会自动输出到命令行。

以 listEventBuses API 为例：

```sh
200
{"eventBuses":[{"eventBusName":"add-bus"},{"description":"A demo bus.","eventBusName":"demo-bus"}],"total":2,"requestId":"fa5d4ab6-4961-4c2c-a4b9-2845d44f8d82","maxResults":2}
```

