import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi

public class CreateEventBusRequest : Tea.TeaModel {
    public var description_: String?

    public var eventBusName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
    }
}

public class CreateEventBusResponseBody : Tea.TeaModel {
    public var code: String?

    public var eventBusName: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateEventBusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEventBusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateEventBusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEventBusRequest : Tea.TeaModel {
    public var eventBusName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
    }
}

public class GetEventBusResponseBody : Tea.TeaModel {
    public var code: String?

    public var createTimestamp: Int64?

    public var description_: String?

    public var eventBusName: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.createTimestamp != nil {
            map["createTimestamp"] = self.createTimestamp!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("createTimestamp") {
            self.createTimestamp = dict["createTimestamp"] as! Int64
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetEventBusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEventBusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetEventBusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEventBusesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListEventBusesResponseBody : Tea.TeaModel {
    public class EventBuses : Tea.TeaModel {
        public var description_: String?

        public var eventBusName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.eventBusName != nil {
                map["eventBusName"] = self.eventBusName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("eventBusName") {
                self.eventBusName = dict["eventBusName"] as! String
            }
        }
    }
    public var code: String?

    public var eventBuses: [ListEventBusesResponseBody.EventBuses]?

    public var message: String?

    public var requestId: String?

    public var nextToken: String?

    public var total: Int?

    public var maxResults: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.eventBuses != nil {
            var tmp : [Any] = []
            for k in self.eventBuses! {
                tmp.append(k.toMap())
            }
            map["eventBuses"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("eventBuses") {
            var tmp : [ListEventBusesResponseBody.EventBuses] = []
            for v in dict["eventBuses"] as! [Any] {
                var model = ListEventBusesResponseBody.EventBuses()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventBuses = tmp
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
    }
}

public class ListEventBusesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventBusesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListEventBusesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEventBusRequest : Tea.TeaModel {
    public var eventBusName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
    }
}

public class DeleteEventBusResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteEventBusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventBusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteEventBusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApiDestinationRequest : Tea.TeaModel {
    public class HttpApiParameters : Tea.TeaModel {
        public class ApiParameters : Tea.TeaModel {
            public var name: String?

            public var description_: String?

            public var type: String?

            public var defaultValue: String?

            public var in_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.defaultValue != nil {
                    map["defaultValue"] = self.defaultValue!
                }
                if self.in_ != nil {
                    map["in"] = self.in_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("defaultValue") {
                    self.defaultValue = dict["defaultValue"] as! String
                }
                if dict.keys.contains("in") {
                    self.in_ = dict["in"] as! String
                }
            }
        }
        public var endpoint: String?

        public var method: String?

        public var apiParameters: [CreateApiDestinationRequest.HttpApiParameters.ApiParameters]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.method != nil {
                map["method"] = self.method!
            }
            if self.apiParameters != nil {
                var tmp : [Any] = []
                for k in self.apiParameters! {
                    tmp.append(k.toMap())
                }
                map["apiParameters"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endpoint") {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("method") {
                self.method = dict["method"] as! String
            }
            if dict.keys.contains("apiParameters") {
                var tmp : [CreateApiDestinationRequest.HttpApiParameters.ApiParameters] = []
                for v in dict["apiParameters"] as! [Any] {
                    var model = CreateApiDestinationRequest.HttpApiParameters.ApiParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiParameters = tmp
            }
        }
    }
    public var apiDestinationName: String?

    public var connectionName: String?

    public var description_: String?

    public var httpApiParameters: CreateApiDestinationRequest.HttpApiParameters?

    public var invocationRateLimitPerSecond: Int?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.httpApiParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiDestinationName != nil {
            map["apiDestinationName"] = self.apiDestinationName!
        }
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.httpApiParameters != nil {
            map["httpApiParameters"] = self.httpApiParameters?.toMap()
        }
        if self.invocationRateLimitPerSecond != nil {
            map["invocationRateLimitPerSecond"] = self.invocationRateLimitPerSecond!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apiDestinationName") {
            self.apiDestinationName = dict["apiDestinationName"] as! String
        }
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("httpApiParameters") {
            var model = CreateApiDestinationRequest.HttpApiParameters()
            model.fromMap(dict["httpApiParameters"] as! [String: Any])
            self.httpApiParameters = model
        }
        if dict.keys.contains("invocationRateLimitPerSecond") {
            self.invocationRateLimitPerSecond = dict["invocationRateLimitPerSecond"] as! Int
        }
    }
}

public class CreateApiDestinationResponseBody : Tea.TeaModel {
    public var code: String?

    public var apiDestinationName: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.apiDestinationName != nil {
            map["apiDestinationName"] = self.apiDestinationName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("apiDestinationName") {
            self.apiDestinationName = dict["apiDestinationName"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateApiDestinationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiDestinationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateApiDestinationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApiDestinationRequest : Tea.TeaModel {
    public class HttpApiParameters : Tea.TeaModel {
        public class ApiParameters : Tea.TeaModel {
            public var name: String?

            public var description_: String?

            public var type: String?

            public var defaultValue: String?

            public var in_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.defaultValue != nil {
                    map["defaultValue"] = self.defaultValue!
                }
                if self.in_ != nil {
                    map["in"] = self.in_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("defaultValue") {
                    self.defaultValue = dict["defaultValue"] as! String
                }
                if dict.keys.contains("in") {
                    self.in_ = dict["in"] as! String
                }
            }
        }
        public var endpoint: String?

        public var method: String?

        public var apiParameters: [UpdateApiDestinationRequest.HttpApiParameters.ApiParameters]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.method != nil {
                map["method"] = self.method!
            }
            if self.apiParameters != nil {
                var tmp : [Any] = []
                for k in self.apiParameters! {
                    tmp.append(k.toMap())
                }
                map["apiParameters"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endpoint") {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("method") {
                self.method = dict["method"] as! String
            }
            if dict.keys.contains("apiParameters") {
                var tmp : [UpdateApiDestinationRequest.HttpApiParameters.ApiParameters] = []
                for v in dict["apiParameters"] as! [Any] {
                    var model = UpdateApiDestinationRequest.HttpApiParameters.ApiParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiParameters = tmp
            }
        }
    }
    public var apiDestinationName: String?

    public var connectionName: String?

    public var description_: String?

    public var httpApiParameters: UpdateApiDestinationRequest.HttpApiParameters?

    public var invocationRateLimitPerSecond: Int?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.httpApiParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiDestinationName != nil {
            map["apiDestinationName"] = self.apiDestinationName!
        }
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.httpApiParameters != nil {
            map["httpApiParameters"] = self.httpApiParameters?.toMap()
        }
        if self.invocationRateLimitPerSecond != nil {
            map["invocationRateLimitPerSecond"] = self.invocationRateLimitPerSecond!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apiDestinationName") {
            self.apiDestinationName = dict["apiDestinationName"] as! String
        }
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("httpApiParameters") {
            var model = UpdateApiDestinationRequest.HttpApiParameters()
            model.fromMap(dict["httpApiParameters"] as! [String: Any])
            self.httpApiParameters = model
        }
        if dict.keys.contains("invocationRateLimitPerSecond") {
            self.invocationRateLimitPerSecond = dict["invocationRateLimitPerSecond"] as! Int
        }
    }
}

public class UpdateApiDestinationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateApiDestinationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApiDestinationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateApiDestinationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApiDestinationRequest : Tea.TeaModel {
    public var apiDestinationName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiDestinationName != nil {
            map["apiDestinationName"] = self.apiDestinationName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apiDestinationName") {
            self.apiDestinationName = dict["apiDestinationName"] as! String
        }
    }
}

public class GetApiDestinationResponseBody : Tea.TeaModel {
    public class HttpApiParameters : Tea.TeaModel {
        public class ApiParameters : Tea.TeaModel {
            public var name: String?

            public var description_: String?

            public var type: String?

            public var defaultValue: String?

            public var in_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.defaultValue != nil {
                    map["defaultValue"] = self.defaultValue!
                }
                if self.in_ != nil {
                    map["in"] = self.in_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("defaultValue") {
                    self.defaultValue = dict["defaultValue"] as! String
                }
                if dict.keys.contains("in") {
                    self.in_ = dict["in"] as! String
                }
            }
        }
        public var endpoint: String?

        public var method: String?

        public var apiParameters: [GetApiDestinationResponseBody.HttpApiParameters.ApiParameters]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.method != nil {
                map["method"] = self.method!
            }
            if self.apiParameters != nil {
                var tmp : [Any] = []
                for k in self.apiParameters! {
                    tmp.append(k.toMap())
                }
                map["apiParameters"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endpoint") {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("method") {
                self.method = dict["method"] as! String
            }
            if dict.keys.contains("apiParameters") {
                var tmp : [GetApiDestinationResponseBody.HttpApiParameters.ApiParameters] = []
                for v in dict["apiParameters"] as! [Any] {
                    var model = GetApiDestinationResponseBody.HttpApiParameters.ApiParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiParameters = tmp
            }
        }
    }
    public var code: String?

    public var apiDestinationName: String?

    public var connectionName: String?

    public var description_: String?

    public var gmtCreate: Int64?

    public var httpApiParameters: GetApiDestinationResponseBody.HttpApiParameters?

    public var invocationRateLimitPerSecond: Int?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.httpApiParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.apiDestinationName != nil {
            map["apiDestinationName"] = self.apiDestinationName!
        }
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.httpApiParameters != nil {
            map["httpApiParameters"] = self.httpApiParameters?.toMap()
        }
        if self.invocationRateLimitPerSecond != nil {
            map["invocationRateLimitPerSecond"] = self.invocationRateLimitPerSecond!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("apiDestinationName") {
            self.apiDestinationName = dict["apiDestinationName"] as! String
        }
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("gmtCreate") {
            self.gmtCreate = dict["gmtCreate"] as! Int64
        }
        if dict.keys.contains("httpApiParameters") {
            var model = GetApiDestinationResponseBody.HttpApiParameters()
            model.fromMap(dict["httpApiParameters"] as! [String: Any])
            self.httpApiParameters = model
        }
        if dict.keys.contains("invocationRateLimitPerSecond") {
            self.invocationRateLimitPerSecond = dict["invocationRateLimitPerSecond"] as! Int
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetApiDestinationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApiDestinationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetApiDestinationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApiDestinationRequest : Tea.TeaModel {
    public var apiDestinationName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiDestinationName != nil {
            map["apiDestinationName"] = self.apiDestinationName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apiDestinationName") {
            self.apiDestinationName = dict["apiDestinationName"] as! String
        }
    }
}

public class DeleteApiDestinationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteApiDestinationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiDestinationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteApiDestinationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApiDestinationsRequest : Tea.TeaModel {
    public var apiDestinationNamePrefix: String?

    public var connectionName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiDestinationNamePrefix != nil {
            map["apiDestinationNamePrefix"] = self.apiDestinationNamePrefix!
        }
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apiDestinationNamePrefix") {
            self.apiDestinationNamePrefix = dict["apiDestinationNamePrefix"] as! String
        }
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListApiDestinationsResponseBody : Tea.TeaModel {
    public class ApiDestinations : Tea.TeaModel {
        public class HttpApiParameters : Tea.TeaModel {
            public class ApiParameters : Tea.TeaModel {
                public var name: String?

                public var description_: String?

                public var type: String?

                public var defaultValue: String?

                public var in_: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.description_ != nil {
                        map["description"] = self.description_!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.defaultValue != nil {
                        map["defaultValue"] = self.defaultValue!
                    }
                    if self.in_ != nil {
                        map["in"] = self.in_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("description") {
                        self.description_ = dict["description"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("defaultValue") {
                        self.defaultValue = dict["defaultValue"] as! String
                    }
                    if dict.keys.contains("in") {
                        self.in_ = dict["in"] as! String
                    }
                }
            }
            public var endpoint: String?

            public var method: String?

            public var apiParameters: [ListApiDestinationsResponseBody.ApiDestinations.HttpApiParameters.ApiParameters]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.method != nil {
                    map["method"] = self.method!
                }
                if self.apiParameters != nil {
                    var tmp : [Any] = []
                    for k in self.apiParameters! {
                        tmp.append(k.toMap())
                    }
                    map["apiParameters"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("method") {
                    self.method = dict["method"] as! String
                }
                if dict.keys.contains("apiParameters") {
                    var tmp : [ListApiDestinationsResponseBody.ApiDestinations.HttpApiParameters.ApiParameters] = []
                    for v in dict["apiParameters"] as! [Any] {
                        var model = ListApiDestinationsResponseBody.ApiDestinations.HttpApiParameters.ApiParameters()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.apiParameters = tmp
                }
            }
        }
        public var apiDestinationName: String?

        public var connectionName: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var httpApiParameters: ListApiDestinationsResponseBody.ApiDestinations.HttpApiParameters?

        public var invocationRateLimitPerSecond: Int?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.httpApiParameters?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiDestinationName != nil {
                map["apiDestinationName"] = self.apiDestinationName!
            }
            if self.connectionName != nil {
                map["connectionName"] = self.connectionName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.httpApiParameters != nil {
                map["httpApiParameters"] = self.httpApiParameters?.toMap()
            }
            if self.invocationRateLimitPerSecond != nil {
                map["invocationRateLimitPerSecond"] = self.invocationRateLimitPerSecond!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apiDestinationName") {
                self.apiDestinationName = dict["apiDestinationName"] as! String
            }
            if dict.keys.contains("connectionName") {
                self.connectionName = dict["connectionName"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("httpApiParameters") {
                var model = ListApiDestinationsResponseBody.ApiDestinations.HttpApiParameters()
                model.fromMap(dict["httpApiParameters"] as! [String: Any])
                self.httpApiParameters = model
            }
            if dict.keys.contains("invocationRateLimitPerSecond") {
                self.invocationRateLimitPerSecond = dict["invocationRateLimitPerSecond"] as! Int
            }
        }
    }
    public var code: String?

    public var apiDestinations: [ListApiDestinationsResponseBody.ApiDestinations]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var total: Int?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.apiDestinations != nil {
            var tmp : [Any] = []
            for k in self.apiDestinations! {
                tmp.append(k.toMap())
            }
            map["apiDestinations"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("apiDestinations") {
            var tmp : [ListApiDestinationsResponseBody.ApiDestinations] = []
            for v in dict["apiDestinations"] as! [Any] {
                var model = ListApiDestinationsResponseBody.ApiDestinations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.apiDestinations = tmp
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListApiDestinationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApiDestinationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListApiDestinationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConnectionRequest : Tea.TeaModel {
    public class AuthParameters : Tea.TeaModel {
        public class ApiKeyAuthParameters : Tea.TeaModel {
            public var apiKeyName: String?

            public var apiKeyValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiKeyName != nil {
                    map["apiKeyName"] = self.apiKeyName!
                }
                if self.apiKeyValue != nil {
                    map["apiKeyValue"] = self.apiKeyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("apiKeyName") {
                    self.apiKeyName = dict["apiKeyName"] as! String
                }
                if dict.keys.contains("apiKeyValue") {
                    self.apiKeyValue = dict["apiKeyValue"] as! String
                }
            }
        }
        public class BasicAuthParameters : Tea.TeaModel {
            public var password: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.password != nil {
                    map["password"] = self.password!
                }
                if self.username != nil {
                    map["username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("password") {
                    self.password = dict["password"] as! String
                }
                if dict.keys.contains("username") {
                    self.username = dict["username"] as! String
                }
            }
        }
        public class OauthParameters : Tea.TeaModel {
            public class ClientParameters : Tea.TeaModel {
                public var clientID: String?

                public var clientSecret: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clientID != nil {
                        map["clientID"] = self.clientID!
                    }
                    if self.clientSecret != nil {
                        map["clientSecret"] = self.clientSecret!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("clientID") {
                        self.clientID = dict["clientID"] as! String
                    }
                    if dict.keys.contains("clientSecret") {
                        self.clientSecret = dict["clientSecret"] as! String
                    }
                }
            }
            public class OauthHttpParameters : Tea.TeaModel {
                public class BodyParameters : Tea.TeaModel {
                    public var isValueSecret: String?

                    public var key: String?

                    public var value: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isValueSecret != nil {
                            map["isValueSecret"] = self.isValueSecret!
                        }
                        if self.key != nil {
                            map["key"] = self.key!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("isValueSecret") {
                            self.isValueSecret = dict["isValueSecret"] as! String
                        }
                        if dict.keys.contains("key") {
                            self.key = dict["key"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public class HeaderParameters : Tea.TeaModel {
                    public var isValueSecret: String?

                    public var key: String?

                    public var value: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isValueSecret != nil {
                            map["isValueSecret"] = self.isValueSecret!
                        }
                        if self.key != nil {
                            map["key"] = self.key!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("isValueSecret") {
                            self.isValueSecret = dict["isValueSecret"] as! String
                        }
                        if dict.keys.contains("key") {
                            self.key = dict["key"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public class QueryStringParameters : Tea.TeaModel {
                    public var isValueSecret: String?

                    public var key: String?

                    public var value: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isValueSecret != nil {
                            map["isValueSecret"] = self.isValueSecret!
                        }
                        if self.key != nil {
                            map["key"] = self.key!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("isValueSecret") {
                            self.isValueSecret = dict["isValueSecret"] as! String
                        }
                        if dict.keys.contains("key") {
                            self.key = dict["key"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public var bodyParameters: [CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters]?

                public var headerParameters: [CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters]?

                public var queryStringParameters: [CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bodyParameters != nil {
                        var tmp : [Any] = []
                        for k in self.bodyParameters! {
                            tmp.append(k.toMap())
                        }
                        map["bodyParameters"] = tmp
                    }
                    if self.headerParameters != nil {
                        var tmp : [Any] = []
                        for k in self.headerParameters! {
                            tmp.append(k.toMap())
                        }
                        map["headerParameters"] = tmp
                    }
                    if self.queryStringParameters != nil {
                        var tmp : [Any] = []
                        for k in self.queryStringParameters! {
                            tmp.append(k.toMap())
                        }
                        map["queryStringParameters"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("bodyParameters") {
                        var tmp : [CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters] = []
                        for v in dict["bodyParameters"] as! [Any] {
                            var model = CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.bodyParameters = tmp
                    }
                    if dict.keys.contains("headerParameters") {
                        var tmp : [CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters] = []
                        for v in dict["headerParameters"] as! [Any] {
                            var model = CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.headerParameters = tmp
                    }
                    if dict.keys.contains("queryStringParameters") {
                        var tmp : [CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters] = []
                        for v in dict["queryStringParameters"] as! [Any] {
                            var model = CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.queryStringParameters = tmp
                    }
                }
            }
            public var authorizationEndpoint: String?

            public var clientParameters: CreateConnectionRequest.AuthParameters.OauthParameters.ClientParameters?

            public var httpMethod: String?

            public var oauthHttpParameters: CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.clientParameters?.validate()
                try self.oauthHttpParameters?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authorizationEndpoint != nil {
                    map["authorizationEndpoint"] = self.authorizationEndpoint!
                }
                if self.clientParameters != nil {
                    map["clientParameters"] = self.clientParameters?.toMap()
                }
                if self.httpMethod != nil {
                    map["httpMethod"] = self.httpMethod!
                }
                if self.oauthHttpParameters != nil {
                    map["oauthHttpParameters"] = self.oauthHttpParameters?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authorizationEndpoint") {
                    self.authorizationEndpoint = dict["authorizationEndpoint"] as! String
                }
                if dict.keys.contains("clientParameters") {
                    var model = CreateConnectionRequest.AuthParameters.OauthParameters.ClientParameters()
                    model.fromMap(dict["clientParameters"] as! [String: Any])
                    self.clientParameters = model
                }
                if dict.keys.contains("httpMethod") {
                    self.httpMethod = dict["httpMethod"] as! String
                }
                if dict.keys.contains("oauthHttpParameters") {
                    var model = CreateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters()
                    model.fromMap(dict["oauthHttpParameters"] as! [String: Any])
                    self.oauthHttpParameters = model
                }
            }
        }
        public var apiKeyAuthParameters: CreateConnectionRequest.AuthParameters.ApiKeyAuthParameters?

        public var authorizationType: String?

        public var basicAuthParameters: CreateConnectionRequest.AuthParameters.BasicAuthParameters?

        public var oauthParameters: CreateConnectionRequest.AuthParameters.OauthParameters?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.apiKeyAuthParameters?.validate()
            try self.basicAuthParameters?.validate()
            try self.oauthParameters?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiKeyAuthParameters != nil {
                map["apiKeyAuthParameters"] = self.apiKeyAuthParameters?.toMap()
            }
            if self.authorizationType != nil {
                map["authorizationType"] = self.authorizationType!
            }
            if self.basicAuthParameters != nil {
                map["basicAuthParameters"] = self.basicAuthParameters?.toMap()
            }
            if self.oauthParameters != nil {
                map["oauthParameters"] = self.oauthParameters?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apiKeyAuthParameters") {
                var model = CreateConnectionRequest.AuthParameters.ApiKeyAuthParameters()
                model.fromMap(dict["apiKeyAuthParameters"] as! [String: Any])
                self.apiKeyAuthParameters = model
            }
            if dict.keys.contains("authorizationType") {
                self.authorizationType = dict["authorizationType"] as! String
            }
            if dict.keys.contains("basicAuthParameters") {
                var model = CreateConnectionRequest.AuthParameters.BasicAuthParameters()
                model.fromMap(dict["basicAuthParameters"] as! [String: Any])
                self.basicAuthParameters = model
            }
            if dict.keys.contains("oauthParameters") {
                var model = CreateConnectionRequest.AuthParameters.OauthParameters()
                model.fromMap(dict["oauthParameters"] as! [String: Any])
                self.oauthParameters = model
            }
        }
    }
    public class NetworkParameters : Tea.TeaModel {
        public var networkType: String?

        public var securityGroupId: String?

        public var vpcId: String?

        public var vswitcheId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.networkType != nil {
                map["networkType"] = self.networkType!
            }
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            if self.vswitcheId != nil {
                map["vswitcheId"] = self.vswitcheId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("networkType") {
                self.networkType = dict["networkType"] as! String
            }
            if dict.keys.contains("securityGroupId") {
                self.securityGroupId = dict["securityGroupId"] as! String
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
            }
            if dict.keys.contains("vswitcheId") {
                self.vswitcheId = dict["vswitcheId"] as! String
            }
        }
    }
    public var authParameters: CreateConnectionRequest.AuthParameters?

    public var connectionName: String?

    public var description_: String?

    public var networkParameters: CreateConnectionRequest.NetworkParameters?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authParameters?.validate()
        try self.networkParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authParameters != nil {
            map["authParameters"] = self.authParameters?.toMap()
        }
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.networkParameters != nil {
            map["networkParameters"] = self.networkParameters?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authParameters") {
            var model = CreateConnectionRequest.AuthParameters()
            model.fromMap(dict["authParameters"] as! [String: Any])
            self.authParameters = model
        }
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("networkParameters") {
            var model = CreateConnectionRequest.NetworkParameters()
            model.fromMap(dict["networkParameters"] as! [String: Any])
            self.networkParameters = model
        }
    }
}

public class CreateConnectionResponseBody : Tea.TeaModel {
    public var code: String?

    public var connectionName: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteConnectionRequest : Tea.TeaModel {
    public var connectionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
    }
}

public class DeleteConnectionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConnectionRequest : Tea.TeaModel {
    public class AuthParameters : Tea.TeaModel {
        public class ApiKeyAuthParameters : Tea.TeaModel {
            public var apiKeyName: String?

            public var apiKeyValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiKeyName != nil {
                    map["apiKeyName"] = self.apiKeyName!
                }
                if self.apiKeyValue != nil {
                    map["apiKeyValue"] = self.apiKeyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("apiKeyName") {
                    self.apiKeyName = dict["apiKeyName"] as! String
                }
                if dict.keys.contains("apiKeyValue") {
                    self.apiKeyValue = dict["apiKeyValue"] as! String
                }
            }
        }
        public class BasicAuthParameters : Tea.TeaModel {
            public var password: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.password != nil {
                    map["password"] = self.password!
                }
                if self.username != nil {
                    map["username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("password") {
                    self.password = dict["password"] as! String
                }
                if dict.keys.contains("username") {
                    self.username = dict["username"] as! String
                }
            }
        }
        public class OauthParameters : Tea.TeaModel {
            public class ClientParameters : Tea.TeaModel {
                public var clientID: String?

                public var clientSecret: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clientID != nil {
                        map["clientID"] = self.clientID!
                    }
                    if self.clientSecret != nil {
                        map["clientSecret"] = self.clientSecret!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("clientID") {
                        self.clientID = dict["clientID"] as! String
                    }
                    if dict.keys.contains("clientSecret") {
                        self.clientSecret = dict["clientSecret"] as! String
                    }
                }
            }
            public class OauthHttpParameters : Tea.TeaModel {
                public class BodyParameters : Tea.TeaModel {
                    public var isValueSecret: String?

                    public var key: String?

                    public var value: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isValueSecret != nil {
                            map["isValueSecret"] = self.isValueSecret!
                        }
                        if self.key != nil {
                            map["key"] = self.key!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("isValueSecret") {
                            self.isValueSecret = dict["isValueSecret"] as! String
                        }
                        if dict.keys.contains("key") {
                            self.key = dict["key"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public class HeaderParameters : Tea.TeaModel {
                    public var isValueSecret: String?

                    public var key: String?

                    public var value: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isValueSecret != nil {
                            map["isValueSecret"] = self.isValueSecret!
                        }
                        if self.key != nil {
                            map["key"] = self.key!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("isValueSecret") {
                            self.isValueSecret = dict["isValueSecret"] as! String
                        }
                        if dict.keys.contains("key") {
                            self.key = dict["key"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public class QueryStringParameters : Tea.TeaModel {
                    public var isValueSecret: String?

                    public var key: String?

                    public var value: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isValueSecret != nil {
                            map["isValueSecret"] = self.isValueSecret!
                        }
                        if self.key != nil {
                            map["key"] = self.key!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("isValueSecret") {
                            self.isValueSecret = dict["isValueSecret"] as! String
                        }
                        if dict.keys.contains("key") {
                            self.key = dict["key"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public var bodyParameters: [UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters]?

                public var headerParameters: [UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters]?

                public var queryStringParameters: [UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bodyParameters != nil {
                        var tmp : [Any] = []
                        for k in self.bodyParameters! {
                            tmp.append(k.toMap())
                        }
                        map["bodyParameters"] = tmp
                    }
                    if self.headerParameters != nil {
                        var tmp : [Any] = []
                        for k in self.headerParameters! {
                            tmp.append(k.toMap())
                        }
                        map["headerParameters"] = tmp
                    }
                    if self.queryStringParameters != nil {
                        var tmp : [Any] = []
                        for k in self.queryStringParameters! {
                            tmp.append(k.toMap())
                        }
                        map["queryStringParameters"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("bodyParameters") {
                        var tmp : [UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters] = []
                        for v in dict["bodyParameters"] as! [Any] {
                            var model = UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.bodyParameters = tmp
                    }
                    if dict.keys.contains("headerParameters") {
                        var tmp : [UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters] = []
                        for v in dict["headerParameters"] as! [Any] {
                            var model = UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.headerParameters = tmp
                    }
                    if dict.keys.contains("queryStringParameters") {
                        var tmp : [UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters] = []
                        for v in dict["queryStringParameters"] as! [Any] {
                            var model = UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.queryStringParameters = tmp
                    }
                }
            }
            public var authorizationEndpoint: String?

            public var clientParameters: UpdateConnectionRequest.AuthParameters.OauthParameters.ClientParameters?

            public var httpMethod: String?

            public var oauthHttpParameters: UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.clientParameters?.validate()
                try self.oauthHttpParameters?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authorizationEndpoint != nil {
                    map["authorizationEndpoint"] = self.authorizationEndpoint!
                }
                if self.clientParameters != nil {
                    map["clientParameters"] = self.clientParameters?.toMap()
                }
                if self.httpMethod != nil {
                    map["httpMethod"] = self.httpMethod!
                }
                if self.oauthHttpParameters != nil {
                    map["oauthHttpParameters"] = self.oauthHttpParameters?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authorizationEndpoint") {
                    self.authorizationEndpoint = dict["authorizationEndpoint"] as! String
                }
                if dict.keys.contains("clientParameters") {
                    var model = UpdateConnectionRequest.AuthParameters.OauthParameters.ClientParameters()
                    model.fromMap(dict["clientParameters"] as! [String: Any])
                    self.clientParameters = model
                }
                if dict.keys.contains("httpMethod") {
                    self.httpMethod = dict["httpMethod"] as! String
                }
                if dict.keys.contains("oauthHttpParameters") {
                    var model = UpdateConnectionRequest.AuthParameters.OauthParameters.OauthHttpParameters()
                    model.fromMap(dict["oauthHttpParameters"] as! [String: Any])
                    self.oauthHttpParameters = model
                }
            }
        }
        public var apiKeyAuthParameters: UpdateConnectionRequest.AuthParameters.ApiKeyAuthParameters?

        public var authorizationType: String?

        public var basicAuthParameters: UpdateConnectionRequest.AuthParameters.BasicAuthParameters?

        public var oauthParameters: UpdateConnectionRequest.AuthParameters.OauthParameters?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.apiKeyAuthParameters?.validate()
            try self.basicAuthParameters?.validate()
            try self.oauthParameters?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiKeyAuthParameters != nil {
                map["apiKeyAuthParameters"] = self.apiKeyAuthParameters?.toMap()
            }
            if self.authorizationType != nil {
                map["authorizationType"] = self.authorizationType!
            }
            if self.basicAuthParameters != nil {
                map["basicAuthParameters"] = self.basicAuthParameters?.toMap()
            }
            if self.oauthParameters != nil {
                map["oauthParameters"] = self.oauthParameters?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("apiKeyAuthParameters") {
                var model = UpdateConnectionRequest.AuthParameters.ApiKeyAuthParameters()
                model.fromMap(dict["apiKeyAuthParameters"] as! [String: Any])
                self.apiKeyAuthParameters = model
            }
            if dict.keys.contains("authorizationType") {
                self.authorizationType = dict["authorizationType"] as! String
            }
            if dict.keys.contains("basicAuthParameters") {
                var model = UpdateConnectionRequest.AuthParameters.BasicAuthParameters()
                model.fromMap(dict["basicAuthParameters"] as! [String: Any])
                self.basicAuthParameters = model
            }
            if dict.keys.contains("oauthParameters") {
                var model = UpdateConnectionRequest.AuthParameters.OauthParameters()
                model.fromMap(dict["oauthParameters"] as! [String: Any])
                self.oauthParameters = model
            }
        }
    }
    public class NetworkParameters : Tea.TeaModel {
        public var networkType: String?

        public var securityGroupId: String?

        public var vpcId: String?

        public var vswitcheId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.networkType != nil {
                map["networkType"] = self.networkType!
            }
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            if self.vswitcheId != nil {
                map["vswitcheId"] = self.vswitcheId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("networkType") {
                self.networkType = dict["networkType"] as! String
            }
            if dict.keys.contains("securityGroupId") {
                self.securityGroupId = dict["securityGroupId"] as! String
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
            }
            if dict.keys.contains("vswitcheId") {
                self.vswitcheId = dict["vswitcheId"] as! String
            }
        }
    }
    public var authParameters: UpdateConnectionRequest.AuthParameters?

    public var connectionName: String?

    public var description_: String?

    public var networkParameters: UpdateConnectionRequest.NetworkParameters?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authParameters?.validate()
        try self.networkParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authParameters != nil {
            map["authParameters"] = self.authParameters?.toMap()
        }
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.networkParameters != nil {
            map["networkParameters"] = self.networkParameters?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authParameters") {
            var model = UpdateConnectionRequest.AuthParameters()
            model.fromMap(dict["authParameters"] as! [String: Any])
            self.authParameters = model
        }
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("networkParameters") {
            var model = UpdateConnectionRequest.NetworkParameters()
            model.fromMap(dict["networkParameters"] as! [String: Any])
            self.networkParameters = model
        }
    }
}

public class UpdateConnectionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConnectionRequest : Tea.TeaModel {
    public var connectionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
    }
}

public class GetConnectionResponseBody : Tea.TeaModel {
    public class Connections : Tea.TeaModel {
        public class AuthParameters : Tea.TeaModel {
            public class ApiKeyAuthParameters : Tea.TeaModel {
                public var apiKeyName: String?

                public var apiKeyValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiKeyName != nil {
                        map["apiKeyName"] = self.apiKeyName!
                    }
                    if self.apiKeyValue != nil {
                        map["apiKeyValue"] = self.apiKeyValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("apiKeyName") {
                        self.apiKeyName = dict["apiKeyName"] as! String
                    }
                    if dict.keys.contains("apiKeyValue") {
                        self.apiKeyValue = dict["apiKeyValue"] as! String
                    }
                }
            }
            public class BasicAuthParameters : Tea.TeaModel {
                public var password: String?

                public var username: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.password != nil {
                        map["password"] = self.password!
                    }
                    if self.username != nil {
                        map["username"] = self.username!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("password") {
                        self.password = dict["password"] as! String
                    }
                    if dict.keys.contains("username") {
                        self.username = dict["username"] as! String
                    }
                }
            }
            public class OauthParameters : Tea.TeaModel {
                public class ClientParameters : Tea.TeaModel {
                    public var clientID: String?

                    public var clientSecret: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.clientID != nil {
                            map["clientID"] = self.clientID!
                        }
                        if self.clientSecret != nil {
                            map["clientSecret"] = self.clientSecret!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("clientID") {
                            self.clientID = dict["clientID"] as! String
                        }
                        if dict.keys.contains("clientSecret") {
                            self.clientSecret = dict["clientSecret"] as! String
                        }
                    }
                }
                public class OauthHttpParameters : Tea.TeaModel {
                    public class BodyParameters : Tea.TeaModel {
                        public var isValueSecret: String?

                        public var key: String?

                        public var value: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.isValueSecret != nil {
                                map["isValueSecret"] = self.isValueSecret!
                            }
                            if self.key != nil {
                                map["key"] = self.key!
                            }
                            if self.value != nil {
                                map["value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("isValueSecret") {
                                self.isValueSecret = dict["isValueSecret"] as! String
                            }
                            if dict.keys.contains("key") {
                                self.key = dict["key"] as! String
                            }
                            if dict.keys.contains("value") {
                                self.value = dict["value"] as! String
                            }
                        }
                    }
                    public class HeaderParameters : Tea.TeaModel {
                        public var isValueSecret: String?

                        public var key: String?

                        public var value: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.isValueSecret != nil {
                                map["isValueSecret"] = self.isValueSecret!
                            }
                            if self.key != nil {
                                map["key"] = self.key!
                            }
                            if self.value != nil {
                                map["value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("isValueSecret") {
                                self.isValueSecret = dict["isValueSecret"] as! String
                            }
                            if dict.keys.contains("key") {
                                self.key = dict["key"] as! String
                            }
                            if dict.keys.contains("value") {
                                self.value = dict["value"] as! String
                            }
                        }
                    }
                    public class QueryStringParameters : Tea.TeaModel {
                        public var isValueSecret: String?

                        public var key: String?

                        public var value: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.isValueSecret != nil {
                                map["isValueSecret"] = self.isValueSecret!
                            }
                            if self.key != nil {
                                map["key"] = self.key!
                            }
                            if self.value != nil {
                                map["value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("isValueSecret") {
                                self.isValueSecret = dict["isValueSecret"] as! String
                            }
                            if dict.keys.contains("key") {
                                self.key = dict["key"] as! String
                            }
                            if dict.keys.contains("value") {
                                self.value = dict["value"] as! String
                            }
                        }
                    }
                    public var bodyParameters: [GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters]?

                    public var headerParameters: [GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters]?

                    public var queryStringParameters: [GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.bodyParameters != nil {
                            var tmp : [Any] = []
                            for k in self.bodyParameters! {
                                tmp.append(k.toMap())
                            }
                            map["bodyParameters"] = tmp
                        }
                        if self.headerParameters != nil {
                            var tmp : [Any] = []
                            for k in self.headerParameters! {
                                tmp.append(k.toMap())
                            }
                            map["headerParameters"] = tmp
                        }
                        if self.queryStringParameters != nil {
                            var tmp : [Any] = []
                            for k in self.queryStringParameters! {
                                tmp.append(k.toMap())
                            }
                            map["queryStringParameters"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("bodyParameters") {
                            var tmp : [GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters] = []
                            for v in dict["bodyParameters"] as! [Any] {
                                var model = GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.bodyParameters = tmp
                        }
                        if dict.keys.contains("headerParameters") {
                            var tmp : [GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters] = []
                            for v in dict["headerParameters"] as! [Any] {
                                var model = GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.headerParameters = tmp
                        }
                        if dict.keys.contains("queryStringParameters") {
                            var tmp : [GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters] = []
                            for v in dict["queryStringParameters"] as! [Any] {
                                var model = GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.queryStringParameters = tmp
                        }
                    }
                }
                public var authorizationEndpoint: String?

                public var clientParameters: GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.ClientParameters?

                public var httpMethod: String?

                public var oauthHttpParameters: GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.clientParameters?.validate()
                    try self.oauthHttpParameters?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authorizationEndpoint != nil {
                        map["authorizationEndpoint"] = self.authorizationEndpoint!
                    }
                    if self.clientParameters != nil {
                        map["clientParameters"] = self.clientParameters?.toMap()
                    }
                    if self.httpMethod != nil {
                        map["httpMethod"] = self.httpMethod!
                    }
                    if self.oauthHttpParameters != nil {
                        map["oauthHttpParameters"] = self.oauthHttpParameters?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("authorizationEndpoint") {
                        self.authorizationEndpoint = dict["authorizationEndpoint"] as! String
                    }
                    if dict.keys.contains("clientParameters") {
                        var model = GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.ClientParameters()
                        model.fromMap(dict["clientParameters"] as! [String: Any])
                        self.clientParameters = model
                    }
                    if dict.keys.contains("httpMethod") {
                        self.httpMethod = dict["httpMethod"] as! String
                    }
                    if dict.keys.contains("oauthHttpParameters") {
                        var model = GetConnectionResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters()
                        model.fromMap(dict["oauthHttpParameters"] as! [String: Any])
                        self.oauthHttpParameters = model
                    }
                }
            }
            public var apiKeyAuthParameters: GetConnectionResponseBody.Connections.AuthParameters.ApiKeyAuthParameters?

            public var authorizationType: String?

            public var basicAuthParameters: GetConnectionResponseBody.Connections.AuthParameters.BasicAuthParameters?

            public var oauthParameters: GetConnectionResponseBody.Connections.AuthParameters.OauthParameters?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.apiKeyAuthParameters?.validate()
                try self.basicAuthParameters?.validate()
                try self.oauthParameters?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiKeyAuthParameters != nil {
                    map["apiKeyAuthParameters"] = self.apiKeyAuthParameters?.toMap()
                }
                if self.authorizationType != nil {
                    map["authorizationType"] = self.authorizationType!
                }
                if self.basicAuthParameters != nil {
                    map["basicAuthParameters"] = self.basicAuthParameters?.toMap()
                }
                if self.oauthParameters != nil {
                    map["oauthParameters"] = self.oauthParameters?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("apiKeyAuthParameters") {
                    var model = GetConnectionResponseBody.Connections.AuthParameters.ApiKeyAuthParameters()
                    model.fromMap(dict["apiKeyAuthParameters"] as! [String: Any])
                    self.apiKeyAuthParameters = model
                }
                if dict.keys.contains("authorizationType") {
                    self.authorizationType = dict["authorizationType"] as! String
                }
                if dict.keys.contains("basicAuthParameters") {
                    var model = GetConnectionResponseBody.Connections.AuthParameters.BasicAuthParameters()
                    model.fromMap(dict["basicAuthParameters"] as! [String: Any])
                    self.basicAuthParameters = model
                }
                if dict.keys.contains("oauthParameters") {
                    var model = GetConnectionResponseBody.Connections.AuthParameters.OauthParameters()
                    model.fromMap(dict["oauthParameters"] as! [String: Any])
                    self.oauthParameters = model
                }
            }
        }
        public class NetworkParameters : Tea.TeaModel {
            public var networkType: String?

            public var securityGroupId: String?

            public var vpcId: String?

            public var vswitcheId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.networkType != nil {
                    map["networkType"] = self.networkType!
                }
                if self.securityGroupId != nil {
                    map["securityGroupId"] = self.securityGroupId!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                if self.vswitcheId != nil {
                    map["vswitcheId"] = self.vswitcheId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("networkType") {
                    self.networkType = dict["networkType"] as! String
                }
                if dict.keys.contains("securityGroupId") {
                    self.securityGroupId = dict["securityGroupId"] as! String
                }
                if dict.keys.contains("vpcId") {
                    self.vpcId = dict["vpcId"] as! String
                }
                if dict.keys.contains("vswitcheId") {
                    self.vswitcheId = dict["vswitcheId"] as! String
                }
            }
        }
        public var authParameters: GetConnectionResponseBody.Connections.AuthParameters?

        public var connectionName: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var id: Int?

        public var networkParameters: GetConnectionResponseBody.Connections.NetworkParameters?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authParameters?.validate()
            try self.networkParameters?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authParameters != nil {
                map["authParameters"] = self.authParameters?.toMap()
            }
            if self.connectionName != nil {
                map["connectionName"] = self.connectionName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.networkParameters != nil {
                map["networkParameters"] = self.networkParameters?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authParameters") {
                var model = GetConnectionResponseBody.Connections.AuthParameters()
                model.fromMap(dict["authParameters"] as! [String: Any])
                self.authParameters = model
            }
            if dict.keys.contains("connectionName") {
                self.connectionName = dict["connectionName"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int
            }
            if dict.keys.contains("networkParameters") {
                var model = GetConnectionResponseBody.Connections.NetworkParameters()
                model.fromMap(dict["networkParameters"] as! [String: Any])
                self.networkParameters = model
            }
        }
    }
    public var code: String?

    public var connections: [GetConnectionResponseBody.Connections]?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.connections != nil {
            var tmp : [Any] = []
            for k in self.connections! {
                tmp.append(k.toMap())
            }
            map["connections"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("connections") {
            var tmp : [GetConnectionResponseBody.Connections] = []
            for v in dict["connections"] as! [Any] {
                var model = GetConnectionResponseBody.Connections()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.connections = tmp
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConnectionsRequest : Tea.TeaModel {
    public var connectionNamePrefix: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionNamePrefix != nil {
            map["connectionNamePrefix"] = self.connectionNamePrefix!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("connectionNamePrefix") {
            self.connectionNamePrefix = dict["connectionNamePrefix"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListConnectionsResponseBody : Tea.TeaModel {
    public class Connections : Tea.TeaModel {
        public class AuthParameters : Tea.TeaModel {
            public class ApiKeyAuthParameters : Tea.TeaModel {
                public var apiKeyName: String?

                public var apiKeyValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiKeyName != nil {
                        map["apiKeyName"] = self.apiKeyName!
                    }
                    if self.apiKeyValue != nil {
                        map["apiKeyValue"] = self.apiKeyValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("apiKeyName") {
                        self.apiKeyName = dict["apiKeyName"] as! String
                    }
                    if dict.keys.contains("apiKeyValue") {
                        self.apiKeyValue = dict["apiKeyValue"] as! String
                    }
                }
            }
            public class BasicAuthParameters : Tea.TeaModel {
                public var password: String?

                public var username: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.password != nil {
                        map["password"] = self.password!
                    }
                    if self.username != nil {
                        map["username"] = self.username!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("password") {
                        self.password = dict["password"] as! String
                    }
                    if dict.keys.contains("username") {
                        self.username = dict["username"] as! String
                    }
                }
            }
            public class OauthParameters : Tea.TeaModel {
                public class ClientParameters : Tea.TeaModel {
                    public var clientID: String?

                    public var clientSecret: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.clientID != nil {
                            map["clientID"] = self.clientID!
                        }
                        if self.clientSecret != nil {
                            map["clientSecret"] = self.clientSecret!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("clientID") {
                            self.clientID = dict["clientID"] as! String
                        }
                        if dict.keys.contains("clientSecret") {
                            self.clientSecret = dict["clientSecret"] as! String
                        }
                    }
                }
                public class OauthHttpParameters : Tea.TeaModel {
                    public class BodyParameters : Tea.TeaModel {
                        public var isValueSecret: String?

                        public var key: String?

                        public var value: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.isValueSecret != nil {
                                map["isValueSecret"] = self.isValueSecret!
                            }
                            if self.key != nil {
                                map["key"] = self.key!
                            }
                            if self.value != nil {
                                map["value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("isValueSecret") {
                                self.isValueSecret = dict["isValueSecret"] as! String
                            }
                            if dict.keys.contains("key") {
                                self.key = dict["key"] as! String
                            }
                            if dict.keys.contains("value") {
                                self.value = dict["value"] as! String
                            }
                        }
                    }
                    public class HeaderParameters : Tea.TeaModel {
                        public var isValueSecret: String?

                        public var key: String?

                        public var value: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.isValueSecret != nil {
                                map["isValueSecret"] = self.isValueSecret!
                            }
                            if self.key != nil {
                                map["key"] = self.key!
                            }
                            if self.value != nil {
                                map["value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("isValueSecret") {
                                self.isValueSecret = dict["isValueSecret"] as! String
                            }
                            if dict.keys.contains("key") {
                                self.key = dict["key"] as! String
                            }
                            if dict.keys.contains("value") {
                                self.value = dict["value"] as! String
                            }
                        }
                    }
                    public class QueryStringParameters : Tea.TeaModel {
                        public var isValueSecret: String?

                        public var key: String?

                        public var value: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.isValueSecret != nil {
                                map["isValueSecret"] = self.isValueSecret!
                            }
                            if self.key != nil {
                                map["key"] = self.key!
                            }
                            if self.value != nil {
                                map["value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("isValueSecret") {
                                self.isValueSecret = dict["isValueSecret"] as! String
                            }
                            if dict.keys.contains("key") {
                                self.key = dict["key"] as! String
                            }
                            if dict.keys.contains("value") {
                                self.value = dict["value"] as! String
                            }
                        }
                    }
                    public var bodyParameters: [ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters]?

                    public var headerParameters: [ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters]?

                    public var queryStringParameters: [ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.bodyParameters != nil {
                            var tmp : [Any] = []
                            for k in self.bodyParameters! {
                                tmp.append(k.toMap())
                            }
                            map["bodyParameters"] = tmp
                        }
                        if self.headerParameters != nil {
                            var tmp : [Any] = []
                            for k in self.headerParameters! {
                                tmp.append(k.toMap())
                            }
                            map["headerParameters"] = tmp
                        }
                        if self.queryStringParameters != nil {
                            var tmp : [Any] = []
                            for k in self.queryStringParameters! {
                                tmp.append(k.toMap())
                            }
                            map["queryStringParameters"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("bodyParameters") {
                            var tmp : [ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters] = []
                            for v in dict["bodyParameters"] as! [Any] {
                                var model = ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.BodyParameters()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.bodyParameters = tmp
                        }
                        if dict.keys.contains("headerParameters") {
                            var tmp : [ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters] = []
                            for v in dict["headerParameters"] as! [Any] {
                                var model = ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.HeaderParameters()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.headerParameters = tmp
                        }
                        if dict.keys.contains("queryStringParameters") {
                            var tmp : [ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters] = []
                            for v in dict["queryStringParameters"] as! [Any] {
                                var model = ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters.QueryStringParameters()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.queryStringParameters = tmp
                        }
                    }
                }
                public var authorizationEndpoint: String?

                public var clientParameters: ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.ClientParameters?

                public var httpMethod: String?

                public var oauthHttpParameters: ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.clientParameters?.validate()
                    try self.oauthHttpParameters?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authorizationEndpoint != nil {
                        map["authorizationEndpoint"] = self.authorizationEndpoint!
                    }
                    if self.clientParameters != nil {
                        map["clientParameters"] = self.clientParameters?.toMap()
                    }
                    if self.httpMethod != nil {
                        map["httpMethod"] = self.httpMethod!
                    }
                    if self.oauthHttpParameters != nil {
                        map["oauthHttpParameters"] = self.oauthHttpParameters?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("authorizationEndpoint") {
                        self.authorizationEndpoint = dict["authorizationEndpoint"] as! String
                    }
                    if dict.keys.contains("clientParameters") {
                        var model = ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.ClientParameters()
                        model.fromMap(dict["clientParameters"] as! [String: Any])
                        self.clientParameters = model
                    }
                    if dict.keys.contains("httpMethod") {
                        self.httpMethod = dict["httpMethod"] as! String
                    }
                    if dict.keys.contains("oauthHttpParameters") {
                        var model = ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters.OauthHttpParameters()
                        model.fromMap(dict["oauthHttpParameters"] as! [String: Any])
                        self.oauthHttpParameters = model
                    }
                }
            }
            public var apiKeyAuthParameters: ListConnectionsResponseBody.Connections.AuthParameters.ApiKeyAuthParameters?

            public var authorizationType: String?

            public var basicAuthParameters: ListConnectionsResponseBody.Connections.AuthParameters.BasicAuthParameters?

            public var oauthParameters: ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.apiKeyAuthParameters?.validate()
                try self.basicAuthParameters?.validate()
                try self.oauthParameters?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiKeyAuthParameters != nil {
                    map["apiKeyAuthParameters"] = self.apiKeyAuthParameters?.toMap()
                }
                if self.authorizationType != nil {
                    map["authorizationType"] = self.authorizationType!
                }
                if self.basicAuthParameters != nil {
                    map["basicAuthParameters"] = self.basicAuthParameters?.toMap()
                }
                if self.oauthParameters != nil {
                    map["oauthParameters"] = self.oauthParameters?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("apiKeyAuthParameters") {
                    var model = ListConnectionsResponseBody.Connections.AuthParameters.ApiKeyAuthParameters()
                    model.fromMap(dict["apiKeyAuthParameters"] as! [String: Any])
                    self.apiKeyAuthParameters = model
                }
                if dict.keys.contains("authorizationType") {
                    self.authorizationType = dict["authorizationType"] as! String
                }
                if dict.keys.contains("basicAuthParameters") {
                    var model = ListConnectionsResponseBody.Connections.AuthParameters.BasicAuthParameters()
                    model.fromMap(dict["basicAuthParameters"] as! [String: Any])
                    self.basicAuthParameters = model
                }
                if dict.keys.contains("oauthParameters") {
                    var model = ListConnectionsResponseBody.Connections.AuthParameters.OauthParameters()
                    model.fromMap(dict["oauthParameters"] as! [String: Any])
                    self.oauthParameters = model
                }
            }
        }
        public class NetworkParameters : Tea.TeaModel {
            public var networkType: String?

            public var securityGroupId: String?

            public var vpcId: String?

            public var vswitcheId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.networkType != nil {
                    map["networkType"] = self.networkType!
                }
                if self.securityGroupId != nil {
                    map["securityGroupId"] = self.securityGroupId!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                if self.vswitcheId != nil {
                    map["vswitcheId"] = self.vswitcheId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("networkType") {
                    self.networkType = dict["networkType"] as! String
                }
                if dict.keys.contains("securityGroupId") {
                    self.securityGroupId = dict["securityGroupId"] as! String
                }
                if dict.keys.contains("vpcId") {
                    self.vpcId = dict["vpcId"] as! String
                }
                if dict.keys.contains("vswitcheId") {
                    self.vswitcheId = dict["vswitcheId"] as! String
                }
            }
        }
        public var authParameters: ListConnectionsResponseBody.Connections.AuthParameters?

        public var connectionName: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var id: Int?

        public var networkParameters: ListConnectionsResponseBody.Connections.NetworkParameters?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authParameters?.validate()
            try self.networkParameters?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authParameters != nil {
                map["authParameters"] = self.authParameters?.toMap()
            }
            if self.connectionName != nil {
                map["connectionName"] = self.connectionName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.networkParameters != nil {
                map["networkParameters"] = self.networkParameters?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authParameters") {
                var model = ListConnectionsResponseBody.Connections.AuthParameters()
                model.fromMap(dict["authParameters"] as! [String: Any])
                self.authParameters = model
            }
            if dict.keys.contains("connectionName") {
                self.connectionName = dict["connectionName"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int
            }
            if dict.keys.contains("networkParameters") {
                var model = ListConnectionsResponseBody.Connections.NetworkParameters()
                model.fromMap(dict["networkParameters"] as! [String: Any])
                self.networkParameters = model
            }
        }
    }
    public var code: String?

    public var connections: [ListConnectionsResponseBody.Connections]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var total: Int?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.connections != nil {
            var tmp : [Any] = []
            for k in self.connections! {
                tmp.append(k.toMap())
            }
            map["connections"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("connections") {
            var tmp : [ListConnectionsResponseBody.Connections] = []
            for v in dict["connections"] as! [Any] {
                var model = ListConnectionsResponseBody.Connections()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.connections = tmp
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListConnectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnectionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConnectionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnumsResponseResponseBody : Tea.TeaModel {
    public var authorizationTypeEnums: String?

    public var networkTypeEnums: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationTypeEnums != nil {
            map["authorizationTypeEnums"] = self.authorizationTypeEnums!
        }
        if self.networkTypeEnums != nil {
            map["networkTypeEnums"] = self.networkTypeEnums!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authorizationTypeEnums") {
            self.authorizationTypeEnums = dict["authorizationTypeEnums"] as! String
        }
        if dict.keys.contains("networkTypeEnums") {
            self.networkTypeEnums = dict["networkTypeEnums"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListEnumsResponseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutEventsRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var event: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.event != nil {
            map["event"] = self.event!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("event") {
            self.event = dict["event"] as! String
        }
    }
}

public class PutEventsResponseBody : Tea.TeaModel {
    public class EntryList : Tea.TeaModel {
        public var eventId: String?

        public var errorCode: String?

        public var errorMessage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventId != nil {
                map["eventId"] = self.eventId!
            }
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eventId") {
                self.eventId = dict["eventId"] as! String
            }
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
        }
    }
    public var failedEntryCount: Int?

    public var entryList: [PutEventsResponseBody.EntryList]?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failedEntryCount != nil {
            map["failedEntryCount"] = self.failedEntryCount!
        }
        if self.entryList != nil {
            var tmp : [Any] = []
            for k in self.entryList! {
                tmp.append(k.toMap())
            }
            map["entryList"] = tmp
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("failedEntryCount") {
            self.failedEntryCount = dict["failedEntryCount"] as! Int
        }
        if dict.keys.contains("entryList") {
            var tmp : [PutEventsResponseBody.EntryList] = []
            for v in dict["entryList"] as! [Any] {
                var model = PutEventsResponseBody.EntryList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entryList = tmp
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class PutEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PutEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEventRuleRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public var description_: String?

    public var filterPattern: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.filterPattern != nil {
            map["filterPattern"] = self.filterPattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("filterPattern") {
            self.filterPattern = dict["filterPattern"] as! String
        }
    }
}

public class CreateEventRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var eventRuleName: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateEventRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEventRuleRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
    }
}

public class GetEventRuleResponseBody : Tea.TeaModel {
    public class EventTargets : Tea.TeaModel {
        public class RunOptions : Tea.TeaModel {
            public class RetryStrategy : Tea.TeaModel {
                public var pushRetryStrategy: String?

                public var maximumEventAgeInSeconds: Int32?

                public var maximumRetryAttempts: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.pushRetryStrategy != nil {
                        map["pushRetryStrategy"] = self.pushRetryStrategy!
                    }
                    if self.maximumEventAgeInSeconds != nil {
                        map["maximumEventAgeInSeconds"] = self.maximumEventAgeInSeconds!
                    }
                    if self.maximumRetryAttempts != nil {
                        map["maximumRetryAttempts"] = self.maximumRetryAttempts!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("pushRetryStrategy") {
                        self.pushRetryStrategy = dict["pushRetryStrategy"] as! String
                    }
                    if dict.keys.contains("maximumEventAgeInSeconds") {
                        self.maximumEventAgeInSeconds = dict["maximumEventAgeInSeconds"] as! Int32
                    }
                    if dict.keys.contains("maximumRetryAttempts") {
                        self.maximumRetryAttempts = dict["maximumRetryAttempts"] as! Int32
                    }
                }
            }
            public class DeadLetterQueue : Tea.TeaModel {
                public var type: String?

                public var config: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.config != nil {
                        map["config"] = self.config!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("config") {
                        self.config = dict["config"] as! [String: Any]
                    }
                }
            }
            public var errorsTolerance: String?

            public var retryStrategy: GetEventRuleResponseBody.EventTargets.RunOptions.RetryStrategy?

            public var deadLetterQueue: GetEventRuleResponseBody.EventTargets.RunOptions.DeadLetterQueue?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.retryStrategy?.validate()
                try self.deadLetterQueue?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errorsTolerance != nil {
                    map["errorsTolerance"] = self.errorsTolerance!
                }
                if self.retryStrategy != nil {
                    map["retryStrategy"] = self.retryStrategy?.toMap()
                }
                if self.deadLetterQueue != nil {
                    map["deadLetterQueue"] = self.deadLetterQueue?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("errorsTolerance") {
                    self.errorsTolerance = dict["errorsTolerance"] as! String
                }
                if dict.keys.contains("retryStrategy") {
                    var model = GetEventRuleResponseBody.EventTargets.RunOptions.RetryStrategy()
                    model.fromMap(dict["retryStrategy"] as! [String: Any])
                    self.retryStrategy = model
                }
                if dict.keys.contains("deadLetterQueue") {
                    var model = GetEventRuleResponseBody.EventTargets.RunOptions.DeadLetterQueue()
                    model.fromMap(dict["deadLetterQueue"] as! [String: Any])
                    self.deadLetterQueue = model
                }
            }
        }
        public var eventTargetName: String?

        public var className: String?

        public var config: [String: Any]?

        public var runOptions: GetEventRuleResponseBody.EventTargets.RunOptions?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.runOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventTargetName != nil {
                map["eventTargetName"] = self.eventTargetName!
            }
            if self.className != nil {
                map["className"] = self.className!
            }
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.runOptions != nil {
                map["runOptions"] = self.runOptions?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eventTargetName") {
                self.eventTargetName = dict["eventTargetName"] as! String
            }
            if dict.keys.contains("className") {
                self.className = dict["className"] as! String
            }
            if dict.keys.contains("config") {
                self.config = dict["config"] as! [String: Any]
            }
            if dict.keys.contains("runOptions") {
                var model = GetEventRuleResponseBody.EventTargets.RunOptions()
                model.fromMap(dict["runOptions"] as! [String: Any])
                self.runOptions = model
            }
        }
    }
    public var code: String?

    public var eventBusName: String?

    public var eventRuleName: String?

    public var description_: String?

    public var filterPattern: String?

    public var status: String?

    public var gmtCreate: String?

    public var gmtModify: String?

    public var eventTargets: [GetEventRuleResponseBody.EventTargets]?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.filterPattern != nil {
            map["filterPattern"] = self.filterPattern!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModify != nil {
            map["gmtModify"] = self.gmtModify!
        }
        if self.eventTargets != nil {
            var tmp : [Any] = []
            for k in self.eventTargets! {
                tmp.append(k.toMap())
            }
            map["eventTargets"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("filterPattern") {
            self.filterPattern = dict["filterPattern"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("gmtCreate") {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("gmtModify") {
            self.gmtModify = dict["gmtModify"] as! String
        }
        if dict.keys.contains("eventTargets") {
            var tmp : [GetEventRuleResponseBody.EventTargets] = []
            for v in dict["eventTargets"] as! [Any] {
                var model = GetEventRuleResponseBody.EventTargets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventTargets = tmp
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetEventRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEventRuleRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
    }
}

public class DeleteEventRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteEventRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEventRuleRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public var description_: String?

    public var filterPattern: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.filterPattern != nil {
            map["filterPattern"] = self.filterPattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("filterPattern") {
            self.filterPattern = dict["filterPattern"] as! String
        }
    }
}

public class UpdateEventRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateEventRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEventRulesRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListEventRulesResponseBody : Tea.TeaModel {
    public class EventRules : Tea.TeaModel {
        public var eventBusName: String?

        public var eventRuleName: String?

        public var description_: String?

        public var filterPattern: String?

        public var status: String?

        public var gmtCreate: String?

        public var gmtModify: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventBusName != nil {
                map["eventBusName"] = self.eventBusName!
            }
            if self.eventRuleName != nil {
                map["eventRuleName"] = self.eventRuleName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.filterPattern != nil {
                map["filterPattern"] = self.filterPattern!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModify != nil {
                map["gmtModify"] = self.gmtModify!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eventBusName") {
                self.eventBusName = dict["eventBusName"] as! String
            }
            if dict.keys.contains("eventRuleName") {
                self.eventRuleName = dict["eventRuleName"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("filterPattern") {
                self.filterPattern = dict["filterPattern"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModify") {
                self.gmtModify = dict["gmtModify"] as! String
            }
        }
    }
    public var eventRules: [ListEventRulesResponseBody.EventRules]?

    public var total: Int?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventRules != nil {
            var tmp : [Any] = []
            for k in self.eventRules! {
                tmp.append(k.toMap())
            }
            map["eventRules"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventRules") {
            var tmp : [ListEventRulesResponseBody.EventRules] = []
            for v in dict["eventRules"] as! [Any] {
                var model = ListEventRulesResponseBody.EventRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventRules = tmp
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListEventRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListEventRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableEventRuleRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
    }
}

public class EnableEventRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class EnableEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableEventRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableEventRuleRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
    }
}

public class DisableEventRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DisableEventRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableEventRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableEventRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEventSourceRequest : Tea.TeaModel {
    public var description_: String?

    public var eventBusName: String?

    public var eventSourceName: String?

    public var className: String?

    public var config: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventSourceName != nil {
            map["eventSourceName"] = self.eventSourceName!
        }
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventSourceName") {
            self.eventSourceName = dict["eventSourceName"] as! String
        }
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! [String: Any]
        }
    }
}

public class CreateEventSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var eventSourceName: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.eventSourceName != nil {
            map["eventSourceName"] = self.eventSourceName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("eventSourceName") {
            self.eventSourceName = dict["eventSourceName"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateEventSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEventSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateEventSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEventSourceRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventSourceName: String?

    public var description_: String?

    public var className: String?

    public var status: Int?

    public var config: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventSourceName != nil {
            map["eventSourceName"] = self.eventSourceName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventSourceName") {
            self.eventSourceName = dict["eventSourceName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! [String: Any]
        }
    }
}

public class UpdateEventSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateEventSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEventSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateEventSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEventSourceRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventSourceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventSourceName != nil {
            map["eventSourceName"] = self.eventSourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventSourceName") {
            self.eventSourceName = dict["eventSourceName"] as! String
        }
    }
}

public class DeleteEventSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteEventSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteEventSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEventSourceRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventSourceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventSourceName != nil {
            map["eventSourceName"] = self.eventSourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventSourceName") {
            self.eventSourceName = dict["eventSourceName"] as! String
        }
    }
}

public class GetEventSourceResponseBody : Tea.TeaModel {
    public var eventBusName: String?

    public var eventSourceName: String?

    public var description_: String?

    public var className: String?

    public var config: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventSourceName != nil {
            map["eventSourceName"] = self.eventSourceName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventSourceName") {
            self.eventSourceName = dict["eventSourceName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! [String: Any]
        }
    }
}

public class GetEventSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEventSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetEventSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEventSourcesRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventSourceType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventSourceType != nil {
            map["eventSourceType"] = self.eventSourceType!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventSourceType") {
            self.eventSourceType = dict["eventSourceType"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListEventSourcesResponseBody : Tea.TeaModel {
    public class EventSources : Tea.TeaModel {
        public var eventBusName: String?

        public var eventSourceName: String?

        public var description_: String?

        public var className: String?

        public var config: [String: Any]?

        public var gmtCreate: String?

        public var gmtModify: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventBusName != nil {
                map["eventBusName"] = self.eventBusName!
            }
            if self.eventSourceName != nil {
                map["eventSourceName"] = self.eventSourceName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.className != nil {
                map["className"] = self.className!
            }
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModify != nil {
                map["gmtModify"] = self.gmtModify!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eventBusName") {
                self.eventBusName = dict["eventBusName"] as! String
            }
            if dict.keys.contains("eventSourceName") {
                self.eventSourceName = dict["eventSourceName"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("className") {
                self.className = dict["className"] as! String
            }
            if dict.keys.contains("config") {
                self.config = dict["config"] as! [String: Any]
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModify") {
                self.gmtModify = dict["gmtModify"] as! String
            }
        }
    }
    public var eventSources: [ListEventSourcesResponseBody.EventSources]?

    public var total: Int?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventSources != nil {
            var tmp : [Any] = []
            for k in self.eventSources! {
                tmp.append(k.toMap())
            }
            map["eventSources"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventSources") {
            var tmp : [ListEventSourcesResponseBody.EventSources] = []
            for v in dict["eventSources"] as! [Any] {
                var model = ListEventSourcesResponseBody.EventSources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventSources = tmp
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListEventSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListEventSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EventTarget : Tea.TeaModel {
    public class RunOptions : Tea.TeaModel {
        public class RetryStrategy : Tea.TeaModel {
            public var pushRetryStrategy: String?

            public var maximumEventAgeInSeconds: Int32?

            public var maximumRetryAttempts: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pushRetryStrategy != nil {
                    map["pushRetryStrategy"] = self.pushRetryStrategy!
                }
                if self.maximumEventAgeInSeconds != nil {
                    map["maximumEventAgeInSeconds"] = self.maximumEventAgeInSeconds!
                }
                if self.maximumRetryAttempts != nil {
                    map["maximumRetryAttempts"] = self.maximumRetryAttempts!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("pushRetryStrategy") {
                    self.pushRetryStrategy = dict["pushRetryStrategy"] as! String
                }
                if dict.keys.contains("maximumEventAgeInSeconds") {
                    self.maximumEventAgeInSeconds = dict["maximumEventAgeInSeconds"] as! Int32
                }
                if dict.keys.contains("maximumRetryAttempts") {
                    self.maximumRetryAttempts = dict["maximumRetryAttempts"] as! Int32
                }
            }
        }
        public class DeadLetterQueue : Tea.TeaModel {
            public var type: String?

            public var config: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.config != nil {
                    map["config"] = self.config!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("config") {
                    self.config = dict["config"] as! [String: Any]
                }
            }
        }
        public var errorsTolerance: String?

        public var retryStrategy: EventTarget.RunOptions.RetryStrategy?

        public var deadLetterQueue: EventTarget.RunOptions.DeadLetterQueue?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.retryStrategy?.validate()
            try self.deadLetterQueue?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorsTolerance != nil {
                map["errorsTolerance"] = self.errorsTolerance!
            }
            if self.retryStrategy != nil {
                map["retryStrategy"] = self.retryStrategy?.toMap()
            }
            if self.deadLetterQueue != nil {
                map["deadLetterQueue"] = self.deadLetterQueue?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorsTolerance") {
                self.errorsTolerance = dict["errorsTolerance"] as! String
            }
            if dict.keys.contains("retryStrategy") {
                var model = EventTarget.RunOptions.RetryStrategy()
                model.fromMap(dict["retryStrategy"] as! [String: Any])
                self.retryStrategy = model
            }
            if dict.keys.contains("deadLetterQueue") {
                var model = EventTarget.RunOptions.DeadLetterQueue()
                model.fromMap(dict["deadLetterQueue"] as! [String: Any])
                self.deadLetterQueue = model
            }
        }
    }
    public var eventTargetName: String?

    public var className: String?

    public var config: [String: Any]?

    public var runOptions: EventTarget.RunOptions?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventTargetName != nil {
            map["eventTargetName"] = self.eventTargetName!
        }
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.runOptions != nil {
            map["runOptions"] = self.runOptions?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventTargetName") {
            self.eventTargetName = dict["eventTargetName"] as! String
        }
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! [String: Any]
        }
        if dict.keys.contains("runOptions") {
            var model = EventTarget.RunOptions()
            model.fromMap(dict["runOptions"] as! [String: Any])
            self.runOptions = model
        }
    }
}

public class CreateEventTargetsRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public var eventTargets: [EventTarget]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        if self.eventTargets != nil {
            var tmp : [Any] = []
            for k in self.eventTargets! {
                tmp.append(k.toMap())
            }
            map["eventTargets"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
        if dict.keys.contains("eventTargets") {
            var tmp : [EventTarget] = []
            for v in dict["eventTargets"] as! [Any] {
                var model = EventTarget()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventTargets = tmp
        }
    }
}

public class CreateEventTargetsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateEventTargetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEventTargetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateEventTargetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEventTargetsRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public var eventTargets: [EventTarget]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        if self.eventTargets != nil {
            var tmp : [Any] = []
            for k in self.eventTargets! {
                tmp.append(k.toMap())
            }
            map["eventTargets"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
        if dict.keys.contains("eventTargets") {
            var tmp : [EventTarget] = []
            for v in dict["eventTargets"] as! [Any] {
                var model = EventTarget()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventTargets = tmp
        }
    }
}

public class UpdateEventTargetsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateEventTargetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEventTargetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateEventTargetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEventTargetsRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public var eventTargetNames: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.eventBusName, "eventBusName")
        try self.validateRequired(self.eventRuleName, "eventRuleName")
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        if self.eventTargetNames != nil {
            map["eventTargetNames"] = self.eventTargetNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
        if dict.keys.contains("eventTargetNames") {
            self.eventTargetNames = dict["eventTargetNames"] as! [String]
        }
    }
}

public class DeleteEventTargetsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteEventTargetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventTargetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteEventTargetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEventTargetsRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventRuleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
    }
}

public class ListEventTargetsResponseBody : Tea.TeaModel {
    public class EventTargets : Tea.TeaModel {
        public class RunOptions : Tea.TeaModel {
            public class RetryStrategy : Tea.TeaModel {
                public var pushRetryStrategy: String?

                public var maximumEventAgeInSeconds: Int32?

                public var maximumRetryAttempts: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.pushRetryStrategy != nil {
                        map["pushRetryStrategy"] = self.pushRetryStrategy!
                    }
                    if self.maximumEventAgeInSeconds != nil {
                        map["maximumEventAgeInSeconds"] = self.maximumEventAgeInSeconds!
                    }
                    if self.maximumRetryAttempts != nil {
                        map["maximumRetryAttempts"] = self.maximumRetryAttempts!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("pushRetryStrategy") {
                        self.pushRetryStrategy = dict["pushRetryStrategy"] as! String
                    }
                    if dict.keys.contains("maximumEventAgeInSeconds") {
                        self.maximumEventAgeInSeconds = dict["maximumEventAgeInSeconds"] as! Int32
                    }
                    if dict.keys.contains("maximumRetryAttempts") {
                        self.maximumRetryAttempts = dict["maximumRetryAttempts"] as! Int32
                    }
                }
            }
            public class DeadLetterQueue : Tea.TeaModel {
                public var type: String?

                public var config: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.config != nil {
                        map["config"] = self.config!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("config") {
                        self.config = dict["config"] as! [String: Any]
                    }
                }
            }
            public var errorsTolerance: String?

            public var retryStrategy: ListEventTargetsResponseBody.EventTargets.RunOptions.RetryStrategy?

            public var deadLetterQueue: ListEventTargetsResponseBody.EventTargets.RunOptions.DeadLetterQueue?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.retryStrategy?.validate()
                try self.deadLetterQueue?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errorsTolerance != nil {
                    map["errorsTolerance"] = self.errorsTolerance!
                }
                if self.retryStrategy != nil {
                    map["retryStrategy"] = self.retryStrategy?.toMap()
                }
                if self.deadLetterQueue != nil {
                    map["deadLetterQueue"] = self.deadLetterQueue?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("errorsTolerance") {
                    self.errorsTolerance = dict["errorsTolerance"] as! String
                }
                if dict.keys.contains("retryStrategy") {
                    var model = ListEventTargetsResponseBody.EventTargets.RunOptions.RetryStrategy()
                    model.fromMap(dict["retryStrategy"] as! [String: Any])
                    self.retryStrategy = model
                }
                if dict.keys.contains("deadLetterQueue") {
                    var model = ListEventTargetsResponseBody.EventTargets.RunOptions.DeadLetterQueue()
                    model.fromMap(dict["deadLetterQueue"] as! [String: Any])
                    self.deadLetterQueue = model
                }
            }
        }
        public var eventTargetName: String?

        public var className: String?

        public var config: [String: Any]?

        public var runOptions: ListEventTargetsResponseBody.EventTargets.RunOptions?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.runOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventTargetName != nil {
                map["eventTargetName"] = self.eventTargetName!
            }
            if self.className != nil {
                map["className"] = self.className!
            }
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.runOptions != nil {
                map["runOptions"] = self.runOptions?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eventTargetName") {
                self.eventTargetName = dict["eventTargetName"] as! String
            }
            if dict.keys.contains("className") {
                self.className = dict["className"] as! String
            }
            if dict.keys.contains("config") {
                self.config = dict["config"] as! [String: Any]
            }
            if dict.keys.contains("runOptions") {
                var model = ListEventTargetsResponseBody.EventTargets.RunOptions()
                model.fromMap(dict["runOptions"] as! [String: Any])
                self.runOptions = model
            }
        }
    }
    public var eventBusName: String?

    public var eventRuleName: String?

    public var eventTargets: [ListEventTargetsResponseBody.EventTargets]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventRuleName != nil {
            map["eventRuleName"] = self.eventRuleName!
        }
        if self.eventTargets != nil {
            var tmp : [Any] = []
            for k in self.eventTargets! {
                tmp.append(k.toMap())
            }
            map["eventTargets"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventRuleName") {
            self.eventRuleName = dict["eventRuleName"] as! String
        }
        if dict.keys.contains("eventTargets") {
            var tmp : [ListEventTargetsResponseBody.EventTargets] = []
            for v in dict["eventTargets"] as! [Any] {
                var model = ListEventTargetsResponseBody.EventTargets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventTargets = tmp
        }
    }
}

public class ListEventTargetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventTargetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListEventTargetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEventTypesRequest : Tea.TeaModel {
    public var eventBusName: String?

    public var eventSourceName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventBusName != nil {
            map["eventBusName"] = self.eventBusName!
        }
        if self.eventSourceName != nil {
            map["eventSourceName"] = self.eventSourceName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventBusName") {
            self.eventBusName = dict["eventBusName"] as! String
        }
        if dict.keys.contains("eventSourceName") {
            self.eventSourceName = dict["eventSourceName"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListEventTypesResponseBody : Tea.TeaModel {
    public class EventTypes : Tea.TeaModel {
        public var eventBusName: String?

        public var eventSourceName: String?

        public var eventTypeName: String?

        public var description_: String?

        public var gmtCreate: String?

        public var gmtModify: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventBusName != nil {
                map["eventBusName"] = self.eventBusName!
            }
            if self.eventSourceName != nil {
                map["eventSourceName"] = self.eventSourceName!
            }
            if self.eventTypeName != nil {
                map["eventTypeName"] = self.eventTypeName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModify != nil {
                map["gmtModify"] = self.gmtModify!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eventBusName") {
                self.eventBusName = dict["eventBusName"] as! String
            }
            if dict.keys.contains("eventSourceName") {
                self.eventSourceName = dict["eventSourceName"] as! String
            }
            if dict.keys.contains("eventTypeName") {
                self.eventTypeName = dict["eventTypeName"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModify") {
                self.gmtModify = dict["gmtModify"] as! String
            }
        }
    }
    public var eventTypes: [ListEventTypesResponseBody.EventTypes]?

    public var nextToken: String?

    public var total: Int?

    public var maxResults: Int32?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventTypes != nil {
            var tmp : [Any] = []
            for k in self.eventTypes! {
                tmp.append(k.toMap())
            }
            map["eventTypes"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("eventTypes") {
            var tmp : [ListEventTypesResponseBody.EventTypes] = []
            for v in dict["eventTypes"] as! [Any] {
                var model = ListEventTypesResponseBody.EventTypes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventTypes = tmp
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListEventTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventTypesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListEventTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
