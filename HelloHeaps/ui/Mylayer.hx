package ui;

import h2d.Object;
import h2d.Bitmap;
import hxd.Res;

class Mylayer extends h2d.Layers {
    
    public function new(?parent:h2d.Object) {
        super(parent);
        this.init();
    }

    private function init(): Void {
        var tile = new Bitmap(Res.image.toTile());
        this.add(tile, 0);

        var t1 = h2d.Tile.fromColor(0xFF0000, 30, 30);
        var t2 = h2d.Tile.fromColor(0x00FF00, 30, 30);
        var t3 = h2d.Tile.fromColor(0x0000FF, 30, 30);

        var mc: h2d.Anim = new h2d.Anim([t1, t2, t3], this);
        mc.speed = 24.0;
        mc.onAnimEnd = function (): Void {
            // trace("Playing Complete!");
        }
        mc.x = 100;
    }
}