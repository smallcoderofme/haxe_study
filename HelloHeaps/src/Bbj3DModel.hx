package src;

import hxd.Res;
import h3d.scene.Scene;

import h3d.scene.pbr.DirLight;

class Bbj3DModel extends Scene {

    private var cache: h3d.prim.ModelCache;

    public function new() {
        super();
        this.init();
    }

    private function init() {
        this.cache = new h3d.prim.ModelCache();
        
        cache = new h3d.prim.ModelCache();

		var obj = cache.loadModel(hxd.Res.box);
		obj.scale(0.1);
        this.addChild(obj);
        obj.setPosition(0,0,0);
		this.camera.pos.set( -3, -5, 3);
		this.camera.target.z += 1;

		// obj.playAnimation(cache.loadAnimation(hxd.Res.box));

		// add lights and setup materials
		var dir = new DirLight(new h3d.Vector( -1, 3, -10), this);
		for( m in obj.getMaterials() ) {
			var t = m.mainPass.getShader(h3d.shader.Texture);
			if( t != null ) t.killAlpha = true;
			m.mainPass.culling = None;
			m.getPass("shadow").culling = None;
		}
		this.lightSystem.ambientLight.set(0.4, 0.4, 0.4);

		var shadow = this.renderer.getPass(h3d.pass.DefaultShadowMap);
		shadow.power = 20;
		shadow.color.setColor(0xFFFFFF);
		dir.enableSpecular = true;

		new h3d.scene.CameraController(this).loadFromCamera();
    }
}