import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("eventbridge", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    public func getEndpoint(_ productId: String, _ regionId: String, _ endpointRule: String, _ network: String, _ suffix: String, _ endpointMap: [String: String], _ endpoint: String) throws -> String {
        if (!TeaUtils.Client.empty(endpoint)) {
            return endpoint as! String
        }
        if (!TeaUtils.Client.isUnset(endpointMap) && !TeaUtils.Client.empty(endpointMap[regionId as! String])) {
            return endpointMap[regionId as! String] ?? ""
        }
        var result: String = ""
        if (!TeaUtils.Client.empty(network) && !TeaUtils.Client.equalString(network, "public")) {
            network = "-" + (network as! String)
        }
        else {
            network = ""
        }
        if (!TeaUtils.Client.isUnset(suffix)) {
            suffix = ""
        }
        else {
            suffix = "-" + (suffix as! String)
        }
        if (TeaUtils.Client.equalString(endpointRule, "regional")) {
            if (TeaUtils.Client.empty(regionId)) {
                throw Tea.ReuqestError([
                    "message": "RegionId is empty, please set a valid RegionId"
                ])
            }
            result = (productId as! String) + (suffix as! String) + (network as! String) + "." + (regionId as! String) + ".aliyuncs.com"
        }
        else {
            result = (productId as! String) + (suffix as! String) + (network as! String) + ".aliyuncs.com"
        }
        return result as! String
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventBusWithOptions(_ request: CreateEventBusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEventBusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEventBus",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/bus/createEventBus",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEventBusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventBus(_ request: CreateEventBusRequest) async throws -> CreateEventBusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEventBusWithOptions(request as! CreateEventBusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEventBusWithOptions(_ request: GetEventBusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEventBusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEventBus",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/bus/getEventBus",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEventBusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEventBus(_ request: GetEventBusRequest) async throws -> GetEventBusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEventBusWithOptions(request as! GetEventBusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventBusesWithOptions(_ request: ListEventBusesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventBusesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventBuses",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/bus/listEventBuses",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventBusesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventBuses(_ request: ListEventBusesRequest) async throws -> ListEventBusesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventBusesWithOptions(request as! ListEventBusesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventBusWithOptions(_ request: DeleteEventBusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventBusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEventBus",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/bus/deleteEventBus",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventBusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventBus(_ request: DeleteEventBusRequest) async throws -> DeleteEventBusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEventBusWithOptions(request as! DeleteEventBusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiDestinationWithOptions(_ request: CreateApiDestinationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApiDestinationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiDestinationName)) {
            body["apiDestinationName"] = request.apiDestinationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["connectionName"] = request.connectionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpApiParameters)) {
            body["httpApiParameters"] = request.httpApiParameters!;
        }
        if (!TeaUtils.Client.isUnset(request.invocationRateLimitPerSecond)) {
            body["invocationRateLimitPerSecond"] = request.invocationRateLimitPerSecond!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApiDestination",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/api-destination/createApiDestination",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApiDestinationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiDestination(_ request: CreateApiDestinationRequest) async throws -> CreateApiDestinationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApiDestinationWithOptions(request as! CreateApiDestinationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApiDestinationWithOptions(_ request: UpdateApiDestinationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApiDestinationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiDestinationName)) {
            body["apiDestinationName"] = request.apiDestinationName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["connectionName"] = request.connectionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpApiParameters)) {
            body["httpApiParameters"] = request.httpApiParameters!;
        }
        if (!TeaUtils.Client.isUnset(request.invocationRateLimitPerSecond)) {
            body["invocationRateLimitPerSecond"] = request.invocationRateLimitPerSecond!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApiDestination",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/api-destination/updateApiDestination",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApiDestinationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApiDestination(_ request: UpdateApiDestinationRequest) async throws -> UpdateApiDestinationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateApiDestinationWithOptions(request as! UpdateApiDestinationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApiDestinationWithOptions(_ request: GetApiDestinationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApiDestinationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiDestinationName)) {
            body["apiDestinationName"] = request.apiDestinationName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApiDestination",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/api-destination/getApiDestination",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApiDestinationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApiDestination(_ request: GetApiDestinationRequest) async throws -> GetApiDestinationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getApiDestinationWithOptions(request as! GetApiDestinationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiDestinationWithOptions(_ request: DeleteApiDestinationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApiDestinationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiDestinationName)) {
            body["apiDestinationName"] = request.apiDestinationName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApiDestination",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/api-destination/deleteApiDestination",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApiDestinationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiDestination(_ request: DeleteApiDestinationRequest) async throws -> DeleteApiDestinationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApiDestinationWithOptions(request as! DeleteApiDestinationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiDestinationsWithOptions(_ request: ListApiDestinationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApiDestinationsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiDestinationNamePrefix)) {
            body["apiDestinationNamePrefix"] = request.apiDestinationNamePrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["connectionName"] = request.connectionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApiDestinations",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/api-destination/listApiDestinations",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApiDestinationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiDestinations(_ request: ListApiDestinationsRequest) async throws -> ListApiDestinationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listApiDestinationsWithOptions(request as! ListApiDestinationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConnectionWithOptions(_ request: CreateConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authParameters)) {
            body["authParameters"] = request.authParameters!;
        }
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["connectionName"] = request.connectionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkParameters)) {
            body["networkParameters"] = request.networkParameters!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConnection",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/connection/createConnection",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConnection(_ request: CreateConnectionRequest) async throws -> CreateConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createConnectionWithOptions(request as! CreateConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConnectionWithOptions(_ request: DeleteConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["connectionName"] = request.connectionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConnection",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/connection/deleteConnection",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConnection(_ request: DeleteConnectionRequest) async throws -> DeleteConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteConnectionWithOptions(request as! DeleteConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConnectionWithOptions(_ request: UpdateConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authParameters)) {
            body["authParameters"] = request.authParameters!;
        }
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["connectionName"] = request.connectionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkParameters)) {
            body["networkParameters"] = request.networkParameters!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConnection",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/connection/updateConnection",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConnection(_ request: UpdateConnectionRequest) async throws -> UpdateConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateConnectionWithOptions(request as! UpdateConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionWithOptions(_ request: GetConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["connectionName"] = request.connectionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConnection",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/connection/getConnection",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnection(_ request: GetConnectionRequest) async throws -> GetConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConnectionWithOptions(request as! GetConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func selectOneConnectionWithOptions(_ request: GetConnectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConnectionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionName)) {
            body["connectionName"] = request.connectionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "selectOneConnection",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/connection/selectOneConnection",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConnectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func selectOneConnection(_ request: GetConnectionRequest) async throws -> GetConnectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await selectOneConnectionWithOptions(request as! GetConnectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnectionsWithOptions(_ request: ListConnectionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConnectionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectionNamePrefix)) {
            body["connectionNamePrefix"] = request.connectionNamePrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConnections",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/connection/listConnections",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConnectionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConnections(_ request: ListConnectionsRequest) async throws -> ListConnectionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConnectionsWithOptions(request as! ListConnectionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnumsResponse() async throws -> ListEnumsResponseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var body: [String: Any] = [:]
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "listEnumsResponse",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/connection/listEnumsResponse",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnumsResponseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putEventsWithOptions(_ request: PutEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var headers: [String: String] = [
            "Content-Type": "application/json; charset=UTF-8",
            "ce-specversion": "1.0",
            "ce-type": "com.github.pull_request.opened",
            "ce-source": "https://github.com/cloudevents/spec/pull",
            "ce-subject": "demo",
            "ce-id": "1234-1234-1234",
            "ce-datacontenttype": "application/json",
            "ce-time": "2024-07-01T17:31:00Z",
            "ce-eventbusname": "demo-bus"
        ]
        var body: String = "{}"
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            headers["ce-eventbusname"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.event)) {
            body = request.event ?? ""
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": body as! String,
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "putEvents",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/putEvents",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putEvents(_ request: PutEventsRequest) async throws -> PutEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putEventsWithOptions(request as! PutEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventRuleWithOptions(_ request: CreateEventRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEventRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterPattern)) {
            body["filterPattern"] = request.filterPattern ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEventRule",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/rule/createEventRule",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEventRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventRule(_ request: CreateEventRuleRequest) async throws -> CreateEventRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEventRuleWithOptions(request as! CreateEventRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEventRuleWithOptions(_ request: GetEventRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEventRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEventRule",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/rule/getEventRule",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEventRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEventRule(_ request: GetEventRuleRequest) async throws -> GetEventRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEventRuleWithOptions(request as! GetEventRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventRuleWithOptions(_ request: DeleteEventRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEventRule",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/rule/deleteEventRule",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventRule(_ request: DeleteEventRuleRequest) async throws -> DeleteEventRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEventRuleWithOptions(request as! DeleteEventRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventRuleWithOptions(_ request: UpdateEventRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEventRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterPattern)) {
            body["filterPattern"] = request.filterPattern ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEventRule",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/rule/updateEventRule",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEventRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventRule(_ request: UpdateEventRuleRequest) async throws -> UpdateEventRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateEventRuleWithOptions(request as! UpdateEventRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventRulesWithOptions(_ request: ListEventRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventRules",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/rule/listEventRules",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventRules(_ request: ListEventRulesRequest) async throws -> ListEventRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventRulesWithOptions(request as! ListEventRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableEventRuleWithOptions(_ request: EnableEventRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableEventRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableEventRule",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/rule/enableEventRule",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableEventRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableEventRule(_ request: EnableEventRuleRequest) async throws -> EnableEventRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableEventRuleWithOptions(request as! EnableEventRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableEventRuleWithOptions(_ request: DisableEventRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableEventRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableEventRule",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/rule/disableEventRule",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableEventRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableEventRule(_ request: DisableEventRuleRequest) async throws -> DisableEventRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableEventRuleWithOptions(request as! DisableEventRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventSourceWithOptions(_ request: CreateEventSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEventSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSourceName)) {
            body["eventSourceName"] = request.eventSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.className)) {
            body["className"] = request.className ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEventSource",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/source/createEventSource",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEventSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventSource(_ request: CreateEventSourceRequest) async throws -> CreateEventSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEventSourceWithOptions(request as! CreateEventSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventSourceWithOptions(_ request: UpdateEventSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEventSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSourceName)) {
            body["eventSourceName"] = request.eventSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.className)) {
            body["className"] = request.className ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.config)) {
            body["config"] = request.config ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEventSource",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/source/updateEventSource",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEventSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventSource(_ request: UpdateEventSourceRequest) async throws -> UpdateEventSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateEventSourceWithOptions(request as! UpdateEventSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventSourceWithOptions(_ request: DeleteEventSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSourceName)) {
            body["eventSourceName"] = request.eventSourceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEventSource",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/source/deleteEventSource",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventSource(_ request: DeleteEventSourceRequest) async throws -> DeleteEventSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEventSourceWithOptions(request as! DeleteEventSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEventSourceWithOptions(_ request: GetEventSourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEventSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSourceName)) {
            body["eventSourceName"] = request.eventSourceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEventSource",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/source/getEventSource",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEventSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEventSource(_ request: GetEventSourceRequest) async throws -> GetEventSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEventSourceWithOptions(request as! GetEventSourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventSourcesWithOptions(_ request: ListEventSourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSourceType)) {
            body["eventSourceType"] = request.eventSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventSources",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/source/listEventSources",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventSources(_ request: ListEventSourcesRequest) async throws -> ListEventSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventSourcesWithOptions(request as! ListEventSourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventTargetsWithOptions(_ request: CreateEventTargetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEventTargetsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventTargets)) {
            body["eventTargets"] = request.eventTargets ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEventTargets",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/target/createEventTargets",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEventTargetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventTargets(_ request: CreateEventTargetsRequest) async throws -> CreateEventTargetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEventTargetsWithOptions(request as! CreateEventTargetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventTargetsWithOptions(_ request: UpdateEventTargetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEventTargetsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventTargets)) {
            body["eventTargets"] = request.eventTargets ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEventTargets",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/target/updateEventTargets",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEventTargetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventTargets(_ request: UpdateEventTargetsRequest) async throws -> UpdateEventTargetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateEventTargetsWithOptions(request as! UpdateEventTargetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventTargetsWithOptions(_ request: DeleteEventTargetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventTargetsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventTargetNames)) {
            body["eventTargetNames"] = request.eventTargetNames ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEventTargets",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/target/deleteEventTargets",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventTargetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventTargets(_ request: DeleteEventTargetsRequest) async throws -> DeleteEventTargetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEventTargetsWithOptions(request as! DeleteEventTargetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventTargetsWithOptions(_ request: ListEventTargetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventTargetsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRuleName)) {
            body["eventRuleName"] = request.eventRuleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventTargets",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/target/listEventTargets",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventTargetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventTargets(_ request: ListEventTargetsRequest) async throws -> ListEventTargetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventTargetsWithOptions(request as! ListEventTargetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventTypesWithOptions(_ request: ListEventTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventBusName)) {
            body["eventBusName"] = request.eventBusName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventSourceName)) {
            body["eventSourceName"] = request.eventSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["nextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": TeaUtils.Client.toJSONString(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "listEventTypes",
            "version": "2024-07-01",
            "protocol": "HTTP",
            "pathname": "/type/listEventTypes",
            "method": "POST",
            "authType": "Anonymous",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventTypes(_ request: ListEventTypesRequest) async throws -> ListEventTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventTypesWithOptions(request as! ListEventTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
