package ui;

import h2d.Tile;
import hxd.Res;
import h2d.Bitmap;
import h2d.Layers;

class Role extends Layers {
    var _parent: h2d.Object;
    public function new(?parent:h2d.Object) {
        _parent = parent;
        this.init();
        super(parent);
     
    }

    private function init(): Void {
        var arr: Array<Tile> = [];
        for (i in 0...41) {
            var res;
            if (i<10) {
                res ="000"+i+".png";
            }else {
                res ="00"+i+".png";
            }
            arr.push(hxd.Res.load("wushi/walk/"+res).toImage().toTile());
        }
        var animate = new h2d.Anim(arr, this._parent);
        animate.x = 200;
        animate.y = 200;
    }
}