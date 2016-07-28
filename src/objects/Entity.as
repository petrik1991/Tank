package objects {
import flash.geom.Point;

import starling.display.Sprite;

public class Entity extends Sprite {

    protected var _position: Point;

    public function Entity(pos: Point) {

        _position = pos;
        Instantiate(_position);
        SetImageToEntity();
    }

    private function Instantiate(pos: Point): void{
        x = pos.x;
        y = pos.y;
    }

    protected function UpdatePosition(){

    }

    protected function SetImageToEntity(){

    }
}
}
