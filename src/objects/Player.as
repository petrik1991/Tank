package objects {
import flash.geom.Point;
import starling.display.Image;
import starling.utils.deg2rad;

public class Player extends Entity {

    private var _body: Image;
    private var _head: Image;

    public function get Body(){
        return _body;
    }

    public function set Body(value) {
        _body = value;
        _body.pivotX = _body.width * .5;
        _body.pivotY = _body.height * .5;
    }

    public function get Head(){
        return _head;
    }

    public function set Head(value) {
        _head = value;
        _head.pivotX = _head.width * .5;
        _head.pivotY = _head.height * .7;
    }

    public function Player(pos:Point, body: Image, head: Image) {
        super(pos);

        this.pivotX = this.width * .5;
        this.pivotY = this.height * .5;

        SetImageToPlayer(body, head);
    }

    public override function RotateMe(_rotation: Number){
        _body.rotation = deg2rad(_rotation);
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
