package {
import starling.display.Sprite;
import starling.text.TextField;

public class MainMenu extends Sprite {

        public function MainMenu() {
            super();

            var text: TextField = new TextField(100,100,"An'ka JOPA");
            text.border = true;
            text.autoScale = true;
            addChild(text);
        }
    }
}
