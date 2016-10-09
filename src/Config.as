package {
import flash.geom.Point;

public final class Config {

    public static const START_PLAYER_POSITION : Point = new Point(Game._stage.width >> 1, Game._stage.height * .6);
    public static const PLAYER_BODY_SIZE : Number = Game._stage.width * .15;
}
}
