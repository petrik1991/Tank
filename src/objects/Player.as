package objects {
import flash.geom.Point;

import starling.display.Image;

public class Player extends Entity {

    private var _body: Image;
    private var _head: Image;

    public function get Body(){
        return _body;
    }

    public function set Body(value) {
        _body = value;
    }

    public function get Head(){
        return _head;
    }

    public function set Head(value) {
        _head = value;
    }

    public function Player(pos:Point, body: Image, head: Image) {
        super(pos);

        SetImageToPlayer(body, head);
    }

    private function SetImageToPlayer(body: Image, head: Image) {

        Body = body;
        addChild(_body);

        Head = head;
        addChild(_head);

        width = Config.PLAYER_BODY_SIZE;
        height = Config.PLAYER_BODY_SIZE;
    }
}
}
