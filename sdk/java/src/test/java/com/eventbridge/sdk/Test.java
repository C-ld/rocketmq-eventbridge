package com.eventbridge.sdk;

import com.google.gson.Gson;
import com.aliyun.tea.TeaException;
import com.eventbridge.sdk.models.CreateEventBusResponse;
import com.eventbridge.sdk.models.GetEventBusResponse;
import com.eventbridge.sdk.models.ListEventBusesResponse;

public class Test {
    
    public static com.aliyun.teaopenapi.models.Config conf;
    // private static com.aliyun.teautil.models.RuntimeOptions runtime;
    private static SDKClient client;

    private static Gson gson;

    public static void createClient() throws Exception{
        gson = new Gson();
        conf = new com.aliyun.teaopenapi.models.Config();
        // runtime = new com.aliyun.teautil.models.RuntimeOptions();

        // Endpoint 请参考 https://api.aliyun.com/product/eventbridge
        // config.endpoint = "eventbridge-console.cn-qingdao.aliyuncs.com";
        conf.endpoint = "127.0.0.1:7001";
        client = new SDKClient(conf);
        return;
    }

    public static void testListEventBuses() throws Exception {
        com.eventbridge.sdk.models.ListEventBusesRequest listEventBusesRequest = new com.eventbridge.sdk.models.ListEventBusesRequest();
        listEventBusesRequest.setMaxResults(2);

        try {
            ListEventBusesResponse res = client.listEventBuses(listEventBusesRequest);
            System.out.println(res.getStatusCode());
            System.out.println(gson.toJson(res.body));
        } catch (Exception error) {
            throw error;
        }
    }

    public static void testGetEventBus() throws Exception{
        com.eventbridge.sdk.models.GetEventBusRequest getEventBusRequest = new com.eventbridge.sdk.models.GetEventBusRequest();
        getEventBusRequest.setEventBusName("demo-bus");

        try {
            GetEventBusResponse res = client.getEventBus(getEventBusRequest);
            System.out.println(res.getStatusCode());
            System.out.println(gson.toJson(res.body));
        } catch (Exception error) {
            throw error;
        }
    }

    public static void testCreateEventBus() throws Exception{
        com.eventbridge.sdk.models.CreateEventBusRequest createEventBusRequest = new com.eventbridge.sdk.models.CreateEventBusRequest();
        createEventBusRequest.setEventBusName("add-bus");

        try {
            CreateEventBusResponse res = client.createEventBus(createEventBusRequest);
            System.out.println(res.getStatusCode());
            System.out.println(gson.toJson(res.body));
        } catch (Exception error) {
            throw error;
        }
    }

    public static void main(String[] args_) throws Exception{
        // java.util.List<String> args = java.util.Arrays.asList(args_);
        createClient();

        try{
            //list
            testListEventBuses();
            //get
            testGetEventBus();
            //add eventBus: "add-bus"
            testCreateEventBus();
            //list
            testListEventBuses();
        } catch (TeaException error) {
            System.out.println(error.getMessage());
            System.out.println(error.getData().get("Recommend"));
            com.aliyun.teautil.Common.assertAsString(error.message);
        } catch (Exception _error) {
            TeaException error = new TeaException(_error.getMessage(), _error);
            System.out.println(error.getMessage());
            System.out.println(error.getData().get("Recommend"));
            com.aliyun.teautil.Common.assertAsString(error.message);
        }
        
    }
}
