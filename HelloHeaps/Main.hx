// import hrt.prefab.l3d.Level3D;
// import hrt.prefab.fx.FX;

// class ColorMult extends hxsl.Shader {
// 	static var SRC = {
// 		@param var color : Vec3;
// 		@param var amount : Float = 1.0;
// 		var pixelColor : Vec4;

// 		function fragment() {
// 			pixelColor.rgb = mix(pixelColor.rgb, pixelColor.rgb * color, amount);
// 		}
// 	}
// }

// import h2d.domkit.Object;
// import hxd.Res;

/*
@:uiComp("div")
// Naming scheme of component classes can be customized with domkit.Macros.registerComponentsPath();
class DivComp extends h2d.Flow implements h2d.domkit.Object {

	static var SRC =
	<div layout="vertical">
	</div>;

	public function new(icons:Array<h2d.Tile>,?parent) {
		super(parent);
		initComponent();
	}

}
*/
import ui.Role;
import hxd.Res;
import hxd.Timer;
import h3d.scene.fwd.DirLight;

class Main extends hxd.App {
	var obj:h3d.scene.Object;
	// var axix:Float = 0;
	var fps: h2d.Text;
	override function init() {
		// trace("hello", hxd.Res.gebin);
		var font : h2d.Font = hxd.res.DefaultFont.get();
		var tf = new h2d.Text(font);
		tf.text = "Hello World\nHeaps is great!";
		tf.textAlign = Center;
		tf.x = 100;
		tf.y = 100;
		s2d.addChild(tf);
		
		/* // Create a model cache
		var cache = new h3d.prim.ModelCache();
		cache.loadLibrary(hxd.Res.tile);
		obj = cache.loadModel(hxd.Res.tile);
		s3d.addChild(obj);
		
		obj.scale(0.1);
		s3d.addChild(obj);
		s3d.camera.pos.set( -3, -5, 3);
		// s3d.camera.target.z -= 0;

		var dir = new DirLight(new h3d.Vector( -1, 3, -10), s3d);
		for( m in obj.getMaterials() ) {
			var t = m.mainPass.getShader(h3d.shader.Texture);
			if( t != null ) t.killAlpha = true;
			m.mainPass.culling = None;
			m.getPass("shadow").culling = None;
		}
		s3d.lightSystem.ambientLight.set(0.4, 0.4, 0.4);

		var shadow = s3d.renderer.getPass(h3d.pass.DefaultShadowMap);
		shadow.power = 20;
		shadow.color.setColor(0x301030);
		dir.enableSpecular = true;
		
        new h3d.scene.CameraController(s3d).loadFromCamera(); */

		// engine.backgroundColor = 0xFF808080;

		// var layer = new ui.Mylayer(s2d);
		// layer.x = 200;

		// var tile = new h2d.Bitmap(hxd.Res.image.toTile(), s2d);
		// tile.x = 500;
		
		// var interaction = new h2d.Interactive(300, 100, tile);
		// interaction.onOver = function(event : hxd.Event) {
		// 	tile.alpha = 0.7;
		// }
		// interaction.onOut = function(event : hxd.Event) {
		// 	tile.alpha = 1;
		// }
		// interaction.onPush = function(event : hxd.Event) {
		// 	trace("down!");
		// }
		// interaction.onRelease = function(event : hxd.Event) {
		// 	trace("up!");
		// }
		// interaction.onClick = function(event : hxd.Event) {
		// 	trace("click!");
		// }

		// var part = new h2d.Particles(s2d);
		// part.load( {}, Res.boom.entry.getText());

/* 		fps = new h2d.Text(font);
		fps.textAlign = Center;
		fps.x = 100;
		fps.text = "FPS: " + Math.round(Timer.fps());
		s2d.addChild(fps); */

		var role = new Role(s2d);
		// new h2d.Bitmap(hxd.Res.wushi.walk._0000.toTile(), s2d);
		// var bitmap = new h2d.Bitmap(hxd.Res.load("wushi/walk/0000.png").toImage().toTile(), s2d);
	}
	override function update(dt:Float) {
		// increment the display bitmap rotation by 0.1 radiansh
		// axix+=dt;
		// fps.text = "FPS: " + Math.round(Timer.fps());
		// obj.setRotation(axix, 0, 0);
	}
	static function main() {
		// h3d.mat.PbrMaterialSetup.set();
		hxd.Res.initEmbed();
		// hxd.Res.initLocal();
		new Main();
	}

}
/*
class Main extends hxd.App {
	var style = null;
	override function init() {
        var tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
        tf.text = "Hello Heaps !";
        tf.font.resizeTo(20);

		var prefab = hxd.Res.my_level3D.load();
		var unk = prefab.getOpt(hrt.prefab.Unknown);
		var all = prefab.getAll(hrt.prefab.Unknown);

		trace(all);

		// if( unk != null )
		// 	throw "Prefab "+unk.getPrefabType()+" was not compiled";

		// var ctx = new hrt.prefab.Context();
		// var shared = new hrt.prefab.ContextShared();
		// ctx.shared = shared;
		// shared.root2d = s2d;
		// shared.root3d = s3d;
		// ctx.init();
        // prefab.make(ctx);
		// function play() {
		// 	var i = prefab.make(ctx);
        //     var fx = cast(i.local3d, hrt.prefab.Object3D);
		// 	// fx.onEnd = function() {
		// 	// 	fx.remove();
		// 	// 	play();
		// 	// };
		// }
		// play();

		// new h3d.scene.CameraController(20,s3d);


		// style = new h2d.domkit.Style();
		// style.load(Res.style); 

		// var view = new SampleView(h2d.Tile.fromColor(0xFFFFFF,64,64),s2d);
		// view.mybmp.alpha = 0.8;
		
		// var bmp = new SampleImage(Res.TEST.toTile(),s2d);
		// bmp.bitmap.alpha = 0.8;
		// bmp.x = 200;

	
		// style.addObject(view);
		
		// style.allowInspect = true;
		// view.dom.addClass("box");
		// view.dom.hover = true;
		// view.dom.addClass("box");
		// view.bg.dom.addClass("bg");
    }
    static function main() {
        new Main();
        Res.initEmbed();
	}
	// override function update(dt:Float) {
	// 	style.sync();
	// }
}
*/
// class SampleView extends h2d.Flow implements h2d.domkit.Object {

//     static var SRC = 
//         <sample-view layout="vertical"> 
//             Hi! 
// 			<bitmap src={tile} public id="mybmp"/>
// 			<div([]) public id="bg"/>
//         </sample-view>

//     public function new(tile:h2d.Tile,?parent) {
//         super(parent);
//         initComponent();
//     }
// }

// class SampleImage extends h2d.Flow implements h2d.domkit.Object {

// 	static var SRC =        
// 		<sample-image layout="vertical"> 
// 			Hello!
// 			<bitmap src={tile} public id="bitmap"/>
// 		</sample-image>

// 	public function new(tile:h2d.Tile,?parent) {
//         super(parent);
//         initComponent();
//     }
// }
