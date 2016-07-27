package {
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;

import starling.core.Starling;
import starling.events.ResizeEvent;
import flash.geom.Rectangle;

[SWF(frameRate="60", backgroundColor="#ff55ff")]
public class Tank extends Sprite
{
    private var _starling:Starling;
    private var _stats: Stats;

    public function Tank()
    {
        stage.align = StageAlign.TOP_LEFT;
        stage.scaleMode = StageScaleMode.NO_SCALE;
        stage.addEventListener(ResizeEvent.RESIZE, resizeStage);

        _stats = new Stats();
        addChild(_stats);

        _starling = new Starling(Game, stage);
        _starling.antiAliasing = 1;
        _starling.start();
    }

    private function resizeStage(e: Event): void{
        stage.removeEventListener(ResizeEvent.RESIZE, resizeStage);

        _starling.stage.stageWidth = this.stage.stageWidth;
        _starling.stage.stageHeight = this.stage.stageHeight;

        var viewPort: Rectangle = new Rectangle(0, 0, stage.fullScreenWidth, stage.fullScreenHeight);

        Starling.current.viewPort = viewPort;
    }
}
}