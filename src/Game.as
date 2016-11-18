package {
import feathers.controls.ScreenNavigator;
import feathers.controls.ScreenNavigatorItem;

import flash.filesystem.File;

import starling.display.Image;

import starling.display.Sprite;
import starling.display.Stage;
import starling.events.Event;
import starling.utils.AssetManager;

public class Game extends Sprite {

    public static var _stage: Stage = null;
    public static var _instance: Game = null;
    public static var _navigator: ScreenNavigator = null;
    private static var _assets:AssetManager = new AssetManager();

    public static const LOADING_SCREEN:String = "loading";
    public static const MAIN_MENU_SCREEN:String = "main_menu";
    public static const GAME_SCREEN:String = "game";

    public function Game() {
        super();

        this.addEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
    }

    private function onAddedToStage(e: Event): void{
        this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);

        _stage = stage;
        _instance = this;

        initScreenNavigator();
        initAssets();
    }

    public function StartGame(): void{
        _navigator.showScreen(MAIN_MENU_SCREEN);
    }

    public static function get Assets():AssetManager
    {
        return _assets;
    }

    private function initAssets():void
    {
        var appDir:File = File.applicationDirectory;

        var loadingFunc:Function = function(ratio:Number):void
        {
            if (ratio == 1.0)
                StartGame();
        };
        _assets.enqueue(appDir.resolvePath("assets"));
        _assets.loadQueue(loadingFunc);
    }

    private function initScreenNavigator():void
    {
        _navigator = new ScreenNavigator();
        addScreens();
        addChild( _navigator );
    }

    /**
     * Method which called for adding screens into the game screen navigation
     *
     */
    protected function addScreens():void
    {
        //_navigator.addScreen( LOADING_SCREEN, new ScreenNavigatorItem( LoadingScreen ) );
        _navigator.addScreen( MAIN_MENU_SCREEN, new ScreenNavigatorItem( MainMenu ) );
        _navigator.addScreen( GAME_SCREEN, new ScreenNavigatorItem( GameScreen ) );
    }

}
}
