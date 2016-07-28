package {
import starling.display.Button;
import starling.events.Touch;
import starling.events.TouchEvent;

public class GameTouchEvents extends TouchEvent {

    public static var BUTTON_TOUCHED: String = "button_touch";

    public var _touchedButton: Button = null;

    public function GameTouchEvents(type:String, touches:Vector.<Touch>, touchedButton: Button = null, shiftKey:Boolean = false, ctrlKey:Boolean = false, bubbles:Boolean = true) {

        super(type, touches, shiftKey, ctrlKey, bubbles);

        _touchedButton = touchedButton;
    }
}
}
