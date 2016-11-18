package objects {
import flash.geom.Point;
import starling.display.Sprite;
import starling.utils.deg2rad;

public class Entity extends Sprite {

    protected var _position: Point;
    public function Entity(pos: Point) {

        _position = pos;
        Instantiate(_position);
    }

    private function Instantiate(pos: Point): void{
        x = pos.x;
        y = pos.y;
    }

    public function RotateMe(_rotation: Number){
        this.rotation = deg2rad(_rotation);
    }

    protected function UpdatePosition(){

    }
}
}
