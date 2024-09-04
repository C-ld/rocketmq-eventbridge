<?php

// This file is auto-generated, don't edit it. Thanks.
namespace RocketMQ\Eventbridge\SDK\V1\Models;

use AlibabaCloud\Tea\Model;

class CreateApiDestinationResponseBody extends Model {
    protected $_name = [
        'code' => 'code',
        'apiDestinationName' => 'apiDestinationName',
        'message' => 'message',
        'requestId' => 'requestId',
    ];
    public function validate() {}
    public function toMap() {
        $res = [];
        if (null !== $this->code) {
            $res['code'] = $this->code;
        }
        if (null !== $this->apiDestinationName) {
            $res['apiDestinationName'] = $this->apiDestinationName;
        }
        if (null !== $this->message) {
            $res['message'] = $this->message;
        }
        if (null !== $this->requestId) {
            $res['requestId'] = $this->requestId;
        }
        return $res;
    }
    /**
     * @param array $map
     * @return CreateApiDestinationResponseBody
     */
    public static function fromMap($map = []) {
        $model = new self();
        if(isset($map['code'])){
            $model->code = $map['code'];
        }
        if(isset($map['apiDestinationName'])){
            $model->apiDestinationName = $map['apiDestinationName'];
        }
        if(isset($map['message'])){
            $model->message = $map['message'];
        }
        if(isset($map['requestId'])){
            $model->requestId = $map['requestId'];
        }
        return $model;
    }
    /**
     * @description The returned response code. The value Success indicates that the request is successful.
     * @example Success
     * @var string
     */
    public $code;

    /**
     * @description The name of the API destination.
     * @example ApiDestinationName
     * @var string
     */
    public $apiDestinationName;

    /**
     * @description The returned message.
     * @example success
     * @var string
     */
    public $message;

    /**
     * @description The request ID.
     * @example 5DAF96FB-A4B6-548C-B999-0BFDCB2261B9
     * @var string
     */
    public $requestId;

}
