package;

// import ui.Grid9Size;
import openfl.display.MovieClip;
import openfl.events.MouseEvent;
import utils.FPS_Memory;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.Assets;
// import openfl.geom.Rectangle;
import openfl.utils.ByteArray;
import openfl.net.Socket;
import openfl.events.*;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.utils.ByteArray;
import openfl.geom.Rectangle;
// import feathers.controls.Button;
// import feathers.events.TriggerEvent;
import haxe.Json;
import haxe.io.Bytes;
import sys.io.FileOutput;
import sys.io.File;

typedef MyData = {
	var username:String;
	var command:String;
}

class Main extends Sprite {
	
	var mc: MovieClip;
	var socket:Socket;
	var text: TextField;
	var tf: TextFormat;

	private function ioErrorHandler(e: IOErrorEvent): Void {
		trace("IOErrorEvent");
		text.appendText("IOErrorEvent: "+ e.text +" \n");
	}
	private function securityErrorHandler(e: SecurityErrorEvent): Void {
		trace("SecurityErrorEvent");
		text.appendText("SecurityErrorEvent \n");
	}
	private function socketConnect(e: Event): Void {
		trace("socketConnect");
		text.text = "socketConnect";
		var bytes:ByteArray = new ByteArray();
		socket.writeByte(131);
		socket.writeByte(107);
		socket.writeByte(0);
		socket.writeByte(5);
		var json: Dynamic = {"command": 100, "username": "sunshuai"};
		var str = Json.stringify(json);
		socket.writeUTFBytes(str);
		socket.flush();
	}
	private function socketData(e: ProgressEvent): Void {
		trace("ProgressEvent");
		var bytes:ByteArray = new ByteArray();
		socket.readBytes(bytes);
		if (bytes.length == 0)
			return;

		var res: String = bytes.readUTFBytes(bytes.bytesAvailable);
		var o:MyData = haxe.Json.parse(res);

		text.appendText(res + "\n");
	}
	private function socketClosed(e: Event): Void {
		trace("socketClosed");
		text.appendText("socketClosed \n");
	}
	public function new () {
		
		super ();	
		stage.frameRate = 60;
		
		// var file:FileInput = sys.io.File.read('tree0_sr_stro.png');
		// text.appendText(file.read());

		// var png = File.getBytes("tree0_sr_stro.png");
		// var bytes = Bytes.alloc(png.length);
		// for (i in 0...bytes.length) {
		// 	bytes.set(i, png.get(i) + 1);
		// }
		// File.saveBytes("encode_pic.png", bytes);	

		// var fo:FileOutput = sys.io.File.write("mytree", true);
		// fo.writeString(bytes.toString());
		// fo.close();

		// bytes.writeBytes(bmd.getPixels(bmd.rect));
		// var bytes: Bytes = File.getBytes("tree0_sr_stro.png");
		// sys.io.File.saveBytes("test.bin", bytes);

		// var json: Dynamic = {"key": "sun", "age": 30};
		// trace(Type.typeof(Json.stringify(json)));

		// tf = new TextFormat(null, 30, 0xFFFFFF, true);
		// text = new TextField();
		// this.addChild(text);
		// text.border = true;
		// text.borderColor = 0x000000;
		// text.width = 500;
		// text.height = 600;

		// text.x = (stage.stageWidth - text.width) / 2;
		// text.y = (stage.stageHeight - text.height) / 2;

		// text.setTextFormat(tf);
		// text.text = "Start connecting ... \n";

		// socket = new Socket("192.168.2.104", 9090);
		// socket.addEventListener(Event.CONNECT, socketConnect);
		// socket.addEventListener(ProgressEvent.SOCKET_DATA, socketData);
		// socket.addEventListener(Event.CLOSE, socketClosed);
		// socket.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
		// socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
		// socket.connect();

		// Assets.loadLibrary ("swf-library").onComplete (function (_) {
		// 	trace ("SWF library loaded");
		// });
		// this.graphics.beginFill(0, 1);
		// this.graphics.drawRect(0, 0, 100, 100);
		// this.graphics.endFill();

		// trace(stage.stageWidth, stage.stageHeight);

		// var data: ByteArray = Assets.getBytes("assets/mytree");
		// var bmd: BitmapData = BitmapData.fromBytes(data);
		// var bitmap = new Bitmap(bmd);
		// // var bitmap = new Bitmap (Assets.getBitmapData("assets/openfl.png"));
		// addChild(bitmap);
		
		var decode_png = File.getBytes("encode_pic.png");
		var bytes = Bytes.alloc(decode_png.length);
		for (i in 0...bytes.length) {
			bytes.set(i, decode_png.get(i) - 1);
		}
		File.saveBytes("decode_pic.png", bytes);	

		var bmd: BitmapData = BitmapData.fromBytes(bytes);
		var bitmap = new Bitmap(bmd);
		// // var bitmap = new Bitmap (Assets.getBitmapData("assets/openfl.png"));
		addChild(bitmap);

		bitmap.x = (stage.stageWidth - bitmap.width) / 2;
		bitmap.y = (stage.stageHeight - bitmap.height) / 2;
		
		// var bitmap1 = new Bitmap(Assets.getBitmapData("assets/tree0_sr_stro.png"));
		// addChild(bitmap1);
		// bitmap1.x = 10;
		// bitmap1.y = 10;

		// var sp = new MySprite();
		// sp.cacheAsBitmap = true;
		// this.addChild(sp);

		// mc = new MyMc();
		// mc.cacheAsBitmap = true;
		// mc.gotoAndStop(1);
		// this.addChild(mc);
			
		//var lt = new LT();
		//this.addChild(lt);
		
		// var collection: Array<MovieClip> = [
		// 	new LT(), new CT(), new RT(),
		// 	new LM(), new CM(), new RM(),
		// 	new LB(), new CB(), new RB()
		// ];
		// var grid9size = new Grid9Size();
		// this.addChild(grid9size);
		// grid9size.x = 10;
		// grid9size.y = 10;
		// grid9size.cells(collection);
		// grid9size.size(50, 20);
		
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
		
		// stage.addEventListener(MouseEvent.CLICK, onClick);
		
		var fps_mem:FPS_Memory = new FPS_Memory(10, 10, 0x000000);
		addChild(fps_mem);


		// var btn: Button = new Button();
		// btn.text = "Click Me";
		// this.addChild(btn);

		// btn.addEventListener(TriggerEvent.TRIGGER, onTrigger);
	}

	// function onTrigger(event:TriggerEvent):Void {
	// 	var button = cast(event.currentTarget, Button);
	// 	trace("button triggered: " + button.text);
	// }

	private function onClick(e: MouseEvent): Void {
		trace('click:', e);
		//mc.play();
	}
	
	
}