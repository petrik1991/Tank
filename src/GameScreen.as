package {
import starling.display.Sprite;
import starling.events.Event;

public class GameScreen extends Sprite {

    private var battle: CreateBattle = null;

    public function GameScreen() {

        super();

        this.addEventListener(Event.ADDED_TO_STAGE, init);
    }

    public function init(e: Event){
        this.removeEventListener(Event.ADDED_TO_STAGE, init);

        if(battle == null)
            battle = new CreateBattle();

        Game._instance.addChild(battle);
    }
}
}
