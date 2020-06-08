// import hxd.Window;
// import h2d.Tile;
import hxd.Res;
// import src.Bbj3DModel;
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

        var prefab = Res.mod_prefab.load();

        new hrt.prefab.fx2d.Bitmap();
        // mp.load(prefab);
        // trace(mp.rotation);
        var ctx = new hrt.prefab.Context();
		var shared = new hrt.prefab.ContextShared();
		ctx.shared = shared;
		shared.root2d = s2d;
		shared.root3d = s3d;
        ctx.init();
        prefab.make(ctx);  


        var pre = Res.mod_l3d.load();
        new hrt.prefab.l3d.Level3D();
        var ctx1 = new hrt.prefab.Context();
		var shared1 = new hrt.prefab.ContextShared();
		ctx.shared = shared1;
		shared1.root2d = s2d;
		shared1.root3d = s3d;
        ctx1.init();
        pre.make(ctx1); 

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