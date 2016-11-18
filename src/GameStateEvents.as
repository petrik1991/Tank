package {
import starling.events.Event;

public class GameStateEvents extends Event {

    public static var ASSETS_LOADED: String = "assets_loaded";

    public function GameStateEvents(type:String, bubbles:Boolean = false, data:Object = null) {
        super(type, bubbles, data);


    }
}
}
