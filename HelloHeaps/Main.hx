import hxd.Window;
import h2d.Tile;
import hxd.Res;
import src.Bbj3DModel;
// import hrt.prefab.fx2d.Bitmap;

class Main extends hxd.App {
    // private var cache:h3d.prim.ModelCache;
    override function init() {
       
        var tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
        tf.text = "Hello World !";
        tf.font.resizeTo(30);
        
        // Window.getInstance().addEventTarget(function(e: hxd.Event): Void {
        //     trace(e.keyCode, e.kind);
        // });

        var prefab = Res.my_prefa.load();

        var mp = new hrt.prefab.fx2d.Bitmap();
        // mp.load(prefab);
        trace(mp.rotation);
        var ctx = new hrt.prefab.Context();
		var shared = new hrt.prefab.ContextShared();
		ctx.shared = shared;
		shared.root2d = s2d;
		shared.root3d = s3d;
        ctx.init();
        prefab.make(ctx);  
        /**
         *  load 2d image tile
         */
        // var tile: Tile = Res.TEST_ColorPalette.toTile();
        // tile = tile.center();
        // var bmp: h2d.Bitmap = new h2d.Bitmap(tile, s2d);
        // bmp.x = 200;
        // bmp.y = 200;

        /**
         *  load fbx 3d model
         */
        // var s = new Bbj3DModel();
        // s3d.addChild(s);
    }

    private function loaded() {
        
    }
    static function main() {
        Res.initEmbed(); 
        new Main();
    }
}