<?php

// This file is auto-generated, don't edit it. Thanks.
namespace RocketMQ\Eventbridge\SDK\V1\Models;

use AlibabaCloud\Tea\Model;

use RocketMQ\Eventbridge\SDK\V1\Models\ListEventTargetsResponseBody\eventTargets;

class ListEventTargetsResponseBody extends Model {
    protected $_name = [
        'eventBusName' => 'eventBusName',
        'eventRuleName' => 'eventRuleName',
        'eventTargets' => 'eventTargets',
    ];
    public function validate() {}
    public function toMap() {
        $res = [];
        if (null !== $this->eventBusName) {
            $res['eventBusName'] = $this->eventBusName;
        }
        if (null !== $this->eventRuleName) {
            $res['eventRuleName'] = $this->eventRuleName;
        }
        if (null !== $this->eventTargets) {
            $res['eventTargets'] = [];
            if(null !== $this->eventTargets && is_array($this->eventTargets)){
                $n = 0;
                foreach($this->eventTargets as $item){
                    $res['eventTargets'][$n++] = null !== $item ? $item->toMap() : $item;
                }
            }
        }
        return $res;
    }
    /**
     * @param array $map
     * @return ListEventTargetsResponseBody
     */
    public static function fromMap($map = []) {
        $model = new self();
        if(isset($map['eventBusName'])){
            $model->eventBusName = $map['eventBusName'];
        }
        if(isset($map['eventRuleName'])){
            $model->eventRuleName = $map['eventRuleName'];
        }
        if(isset($map['eventTargets'])){
            if(!empty($map['eventTargets'])){
                $model->eventTargets = [];
                $n = 0;
                foreach($map['eventTargets'] as $item) {
                    $model->eventTargets[$n++] = null !== $item ? eventTargets::fromMap($item) : $item;
                }
            }
        }
        return $model;
    }
    /**
     * @description The name of the event bus with which the event target is associated.
This parameter is required.
     * @example my-event-bus
     * @var string
     */
    public $eventBusName;

    /**
     * @description The name of the event rule.
This parameter is required.
     * @example myrabbitmq.sourc
     * @var string
     */
    public $eventRuleName;

    /**
     * @var eventTargets[]
     */
    public $eventTargets;

}
