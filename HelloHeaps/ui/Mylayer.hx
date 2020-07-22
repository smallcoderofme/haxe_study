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
    }
}