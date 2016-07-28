package {
import feathers.display.TiledImage;

import flash.desktop.NativeApplication;

import flash.display.Bitmap;
import flash.display.BitmapData;

import starling.display.Button;
import starling.display.Image;
import starling.display.Sprite;
import starling.events.Event;
import starling.events.Touch;
import starling.events.TouchEvent;
import starling.events.TouchPhase;
import starling.textures.Texture;

public class MainMenu extends Sprite {

    public var _bg: Image = null;
    private var _btnStartGame: Button = null;
    private var _btnExit: Button = null;

        public function MainMenu() {
            super();
            addEventListener(Event.ADDED_TO_STAGE, Init);
        }

    private function Init(e: Event): void{
        removeEventListener(Event.ADDED_TO_STAGE, Init);

        _bg = new Image(Assets._instance.getTexture("bg1"));
        addChild(_bg);

        AddButtons();
    }

    private function AddButtons(): void{
        var sprite: flash.display.Sprite = new flash.display.Sprite();
        sprite.graphics.beginFill(0xf12a30, 2);
        sprite.graphics.drawRect(0, 0, 200, 60);
        sprite.graphics.endFill();

        var tex: BitmapData = new BitmapData(200, 60, true, 0x0);
        tex.draw(sprite);

        _btnStartGame = new Button(Texture.fromBitmapData(tex), "Start Game");
        _btnStartGame.addEventListener(TouchEvent.TOUCH, StartGame);
        _btnStartGame.fontSize = 25;
        _btnStartGame.x = (_bg.width - _btnStartGame.width*2) * .25;
        _btnStartGame.y = _bg.height*.7;
        addChild(_btnStartGame);

        _btnExit = new Button(Texture.fromBitmapData(tex), "Exit");
        _btnExit.addEventListener(TouchEvent.TOUCH, ExitGame);
        _btnExit.fontSize = 25;
        _btnExit.x = ((_bg.width - (_btnStartGame.width + _btnExit.width)) * .5) + _btnStartGame.x + _btnStartGame.width;
        _btnExit.y = _btnStartGame.y;
        addChild(_btnExit);
    }

    private function StartGame(e: TouchEvent): void{
        var touch: Touch = e.getTouch(this);

        if(touch.phase == TouchPhase.ENDED){
            _btnStartGame.removeEventListener(TouchEvent.TOUCH, StartGame);
            Game._navigator.showScreen(Game.GAME_SCREEN);
        }
    }

    private function ExitGame(e: TouchEvent): void{
        var touch: Touch = e.getTouch(this);

        if(touch.phase == TouchPhase.ENDED) {
            _btnExit.removeEventListener(TouchEvent.TOUCH, ExitGame);
            NativeApplication.nativeApplication.exit();
        }
    }
}
}

