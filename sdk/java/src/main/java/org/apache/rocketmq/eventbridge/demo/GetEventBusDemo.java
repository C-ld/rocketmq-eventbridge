// This file is auto-generated, don't edit it. Thanks.
package org.apache.rocketmq.eventbridge.demo;

import com.aliyun.tea.*;

public class GetEventBusDemo {

    public com.aliyun.teaopenapi.models.Config _config;
    public org.apache.rocketmq.eventbridge.Client _client;
    public GetEventBusDemo() throws Exception {
        this._config = com.aliyun.teaopenapi.models.Config.build(TeaConverter.buildMap(
            new TeaPair("endpoint", "127.0.0.1:7001")
        ));
        this._client = new org.apache.rocketmq.eventbridge.Client(_config);
    }


    public void testGetEventBus() throws Exception {
        org.apache.rocketmq.eventbridge.models.GetEventBusRequest request = org.apache.rocketmq.eventbridge.models.GetEventBusRequest.build(TeaConverter.buildMap(
            new TeaPair("eventBusName", "newBus")
        ));
        try {
            org.apache.rocketmq.eventbridge.models.GetEventBusResponse res = _client.getEventBus(request);
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
        try {
            GetEventBusDemo demo = new GetEventBusDemo();
            demo.testGetEventBus();
        } catch(Exception e){
            // TODO: deal with exception
        }
    }
}
