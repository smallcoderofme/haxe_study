import hxd.Window;
import h2d.Tile;
import hxd.Res;
import src.Bbj3DModel;
// import h3d.scene.*;
// import h3d.scene.pbr.DirLight;
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

        // var prefab = Res.my_prefa.load();

        // var mp = new hrt.prefab.fx2d.Bitmap();
        // mp.load(prefab);

        // var ctx = new hrt.prefab.Context();
		// var shared = new hrt.prefab.ContextShared();
		// ctx.shared = shared;
		// shared.root2d = s2d;
		// // shared.root3d = s3d;
        // ctx.init();
        // prefab.make(ctx);  

        var tile: Tile = Res.TEST_ColorPalette.toTile();
        tile = tile.center();
        var bmp: h2d.Bitmap = new h2d.Bitmap(tile, s2d);
        bmp.x = 200;
        bmp.y = 200;

        // this.cache = new h3d.prim.ModelCache();
        
        // cache = new h3d.prim.ModelCache();

		// var obj = cache.loadModel(hxd.Res.box);
		// obj.scale(0.1);
		// s3d.addChild(obj);
		// s3d.camera.pos.set( -3, -5, 3);
		// s3d.camera.target.z += 1;

		// // obj.playAnimation(cache.loadAnimation(hxd.Res.box));

		// // add lights and setup materials
		// var dir = new DirLight(new h3d.Vector( -1, 3, -10), s3d);
		// for( m in obj.getMaterials() ) {
		// 	var t = m.mainPass.getShader(h3d.shader.Texture);
		// 	if( t != null ) t.killAlpha = true;
		// 	m.mainPass.culling = None;
		// 	m.getPass("shadow").culling = None;
		// }
		// s3d.lightSystem.ambientLight.set(0.4, 0.4, 0.4);

		// var shadow = s3d.renderer.getPass(h3d.pass.DefaultShadowMap);
		// shadow.power = 20;
		// shadow.color.setColor(0xFFFFFF);
		// dir.enableSpecular = true;

        // new h3d.scene.CameraController(s3d).loadFromCamera();
        
        var s = new Bbj3DModel();
        s3d.addChild(s);
    }

    private function loaded() {
        
    }
    static function main() {
        Res.initEmbed(); 
        new Main();
    }
}