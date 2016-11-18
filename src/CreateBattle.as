package {
import objects.Player;
import starling.display.Image;
import starling.display.Sprite;
import starling.events.Touch;
import starling.events.TouchEvent;
import starling.events.TouchPhase;

public class CreateBattle extends Sprite {

    public var _player: Player = null;
    public var _bg: Image = null;

    public function CreateBattle() {
        super();

        this.addEventListener(TouchEvent.TOUCH, playerMove);

        this.width = Game._instance.width;
        this.height = Game._instance.height;

        CreateBg();

        _player = new Player(Config.START_PLAYER_POSITION, new Image(Game.Assets.getTexture("player_body")), new Image(Game.Assets.getTexture("player_head")));

        this.addChild(_player);
    }

    private function CreateBg(): void{
        _bg = new Image(Game.Assets.getTexture("bg1"));
        addChild(_bg);
    }

    public function playerMove(e: TouchEvent){

        var touch: Touch = e.getTouch(this);

        if(touch.phase == TouchPhase.MOVED){

            _player.RotateMe();
            if(touch.globalX > _player.x){
                _player.x++;
            }else{
                _player.x--;
            }
        }
    }
}
}
