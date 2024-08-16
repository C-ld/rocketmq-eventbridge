// This file is auto-generated, don't edit it. Thanks.
package org.apache.rocketmq.eventbridge.sdk;

import com.aliyun.tea.*;

public class CreateEventBusDemo {

    public com.aliyun.teaopenapi.models.Config _config;
    public org.apache.rocketmq.eventbridge.sdk.Client _client;
    public CreateEventBusDemo() throws Exception {
        this._config = com.aliyun.teaopenapi.models.Config.build(TeaConverter.buildMap(
            new TeaPair("endpoint", "127.0.0.1:7001")
        ));
        this._client = new org.apache.rocketmq.eventbridge.sdk.Client(_config);
    }


    public void testCreateEventBus() throws Exception {
        org.apache.rocketmq.eventbridge.sdk.models.CreateEventBusRequest request = org.apache.rocketmq.eventbridge.sdk.models.CreateEventBusRequest.build(TeaConverter.buildMap(
            new TeaPair("eventBusName", "newBus")
        ));
        try {
            org.apache.rocketmq.eventbridge.sdk.models.CreateEventBusResponse res = _client.createEventBus(request);
            com.aliyun.teaconsole.Client.log(com.aliyun.teautil.Common.toJSONString(res.body));
        } catch (TeaException err) {
            com.aliyun.teaconsole.Client.log("err!");
            com.aliyun.teaconsole.Client.log(err.message);
        } catch (Exception _err) {
            TeaException err = new TeaException(_err.getMessage(), _err);
            com.aliyun.teaconsole.Client.log("err!");
            com.aliyun.teaconsole.Client.log(err.message);
        } finally {
            com.aliyun.teaconsole.Client.log("test end!");
        }        
    }

    public static void main(String args[]){
        try{
            CreateEventBusDemo demo = new CreateEventBusDemo();
            demo.testCreateEventBus();
        } catch (Exception e){
            //TODO: handle the exception
        }
    }
}
