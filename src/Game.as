package {
import feathers.controls.ScreenNavigator;
import feathers.controls.ScreenNavigatorItem;

import starling.display.Image;

import starling.display.Sprite;
import starling.display.Stage;
import starling.events.Event;

public class Game extends Sprite {

    public static var _stage: Stage = null;
    public static var _instance: Game = null;
    public static var _navigator: ScreenNavigator = null;;

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

        new Assets();
    }

    public static function StartGame(): void{
        _navigator.showScreen(MAIN_MENU_SCREEN);
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
