// This file is auto-generated, don't edit it. Thanks.
package org.apache.rocketmq.eventbridge.demo;

import com.aliyun.tea.*;

public class ListEventBusesDemo {

    public com.aliyun.teaopenapi.models.Config _config;
    public org.apache.rocketmq.eventbridge.Client _client;
    public ListEventBusesDemo() throws Exception {
        this._config = com.aliyun.teaopenapi.models.Config.build(TeaConverter.buildMap(
            new TeaPair("endpoint", "127.0.0.1:7001")
        ));
        this._client = new org.apache.rocketmq.eventbridge.Client(_config);
    }


    public void testListEventBuses() throws Exception {
        org.apache.rocketmq.eventbridge.models.ListEventBusesRequest request = org.apache.rocketmq.eventbridge.models.ListEventBusesRequest.build(TeaConverter.buildMap(
            new TeaPair("maxResults", 2)
        ));
        try {
            org.apache.rocketmq.eventbridge.models.ListEventBusesResponse res = _client.listEventBuses(request);
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
            ListEventBusesDemo demo = new ListEventBusesDemo();
            demo.testListEventBuses();
        } catch(Exception e){
            // TODO: deal with exception
        }
    }
}
