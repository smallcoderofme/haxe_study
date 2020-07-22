package;

import ui.Grid9Size;
import openfl.display.MovieClip;
import openfl.events.MouseEvent;
import utils.FPS_Memory;
import openfl.display.Bitmap;
// import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.Assets;
import openfl.geom.Rectangle;
class Main extends Sprite {
	
	var mc: MovieClip;
	public function new () {
		
		super ();		
		// Assets.loadLibrary ("swf-library").onComplete (function (_) {
		// 	trace ("SWF library loaded");
		// });
		// this.graphics.beginFill(0, 1);
		// this.graphics.drawRect(0, 0, 100, 100);
		// this.graphics.endFill();

		// trace(stage.stageWidth, stage.stageHeight);

		//var bitmap = new Bitmap (Assets.getBitmapData("assets/openfl.png"));
		//addChild(bitmap);
		//
		//bitmap.x = (stage.stageWidth - bitmap.width) / 2;
		//bitmap.y = (stage.stageHeight - bitmap.height) / 2;
		


		// var sp = new MySprite();
		// sp.cacheAsBitmap = true;
		// this.addChild(sp);

		// mc = new MyMc();
		// mc.cacheAsBitmap = true;
		// mc.gotoAndStop(1);
		// this.addChild(mc);
			
		//var lt = new LT();
		//this.addChild(lt);
		
		var collection: Array<MovieClip> = [
			new LT(), new CT(), new RT(),
			new LM(), new CM(), new RM(),
			new LB(), new CB(), new RB()
		];
		var grid9size = new Grid9Size();
		this.addChild(grid9size);
		grid9size.x = 10;
		grid9size.y = 10;
		grid9size.cells(collection);
		grid9size.size(50, 20);
		
		//var sc0 = new MyScale();
		//this.addChild(sc0);
		//sc0.x = 100;
		//
		//var sc = new MyScale();
		//this.addChild(sc);
		//sc.x = 100;
		//sc.y = 100;
		//sc.scale9Grid = new Rectangle(2, 2, 60, 60);
		//sc.scaleX = 2;
		//sc.scaleY = 2;
		
		stage.addEventListener(MouseEvent.CLICK, onClick);
		
		var fps_mem:FPS_Memory = new FPS_Memory(10, 10, 0x000000);
		addChild(fps_mem);
	}

	private function onClick(e: MouseEvent): Void {
		trace('click:', e);
		//mc.play();
	}
	
	
}