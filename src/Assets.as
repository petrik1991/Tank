package {
import flash.filesystem.File;

import starling.utils.AssetManager;

public class Assets extends AssetManager{
    public static var _instance: AssetManager;

    public function Assets() {
        if(_instance == null){
            _instance = new AssetManager();
            var appDir:File = File.applicationDirectory;

            var loadingFunc:Function = function(ratio:Number):void
            {
                if (ratio == 1.0)
                    Game.StartGame();
            };
            _instance.enqueue(appDir.resolvePath("assets"));
            _instance.loadQueue(loadingFunc);
        }
    }
}
}
