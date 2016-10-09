package {
import objects.Player;

import starling.display.Image;

import starling.display.Image;

import starling.display.Sprite;

public class GameScreen extends Sprite {

    public var _player: Player = null;

    public function GameScreen() {

        super();

        _player = new Player(Config.START_PLAYER_POSITION, new Image(Assets._instance.getTexture("player_body")), new Image(Assets._instance.getTexture("player_head")));

        Game._instance.addChild(_player);
    }
}
}
