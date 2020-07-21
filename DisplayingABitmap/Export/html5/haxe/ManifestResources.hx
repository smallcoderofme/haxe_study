package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":"SwfLib","assets":"aoy4:pathy5:1.pngy4:sizei83y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y6:10.pngR2i83R3R4R5R7R6tgoR0y6:13.pngR2i78R3R4R5R8R6tgoR0y6:16.pngR2i83R3R4R5R9R6tgoR0y6:19.pngR2i83R3R4R5R10R6tgoR0y6:22.pngR2i78R3R4R5R11R6tgoR0y6:25.pngR2i83R3R4R5R12R6tgoR0y5:4.pngR2i78R3R4R5R13R6tgoR0y5:7.pngR2i83R3R4R5R14R6tgoR0y10:SwfLib.binR2i2519R3y4:TEXTR5R15R6tgh","rootPath":"lib/SwfLib","version":2,"libraryArgs":["SwfLib.bin","eB6U7By2DThBjBeXbDP2"],"libraryType":"openfl._internal.formats.swf.SWFLiteLibrary"}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("SwfLib", library);
		data = '{"name":null,"assets":"aoy4:pathy19:assets%2Fopenfl.pngy4:sizei11126y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y19:assets%2FSwfLib.swfR2i846R3y6:BINARYR5R7R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("SwfLib");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("SwfLib");
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_openfl_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_swflib_swf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file__png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file__png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file__png2 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__swflib_bin extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__lib_swflib_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:image("Assets/openfl.png") @:noCompletion #if display private #end class __ASSET__assets_openfl_png extends lime.graphics.Image {}
@:keep @:file("Assets/SwfLib.swf") @:noCompletion #if display private #end class __ASSET__assets_swflib_swf extends haxe.io.Bytes {}
@:keep @:image("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/1.png") @:noCompletion #if display private #end class __ASSET__file__png extends lime.graphics.Image {}
@:keep @:image("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/10.png") @:noCompletion #if display private #end class __ASSET__file_0_png extends lime.graphics.Image {}
@:keep @:image("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/13.png") @:noCompletion #if display private #end class __ASSET__file_3_png extends lime.graphics.Image {}
@:keep @:image("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/16.png") @:noCompletion #if display private #end class __ASSET__file_6_png extends lime.graphics.Image {}
@:keep @:image("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/19.png") @:noCompletion #if display private #end class __ASSET__file_9_png extends lime.graphics.Image {}
@:keep @:image("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/22.png") @:noCompletion #if display private #end class __ASSET__file_2_png extends lime.graphics.Image {}
@:keep @:image("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/25.png") @:noCompletion #if display private #end class __ASSET__file_5_png extends lime.graphics.Image {}
@:keep @:image("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/4.png") @:noCompletion #if display private #end class __ASSET__file__png1 extends lime.graphics.Image {}
@:keep @:image("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/7.png") @:noCompletion #if display private #end class __ASSET__file__png2 extends lime.graphics.Image {}
@:keep @:file("F:/workspace_haxe/HelloOpenFL/DisplayingABitmap/Export/html5/obj/libraries/SwfLib/SwfLib.bin") @:noCompletion #if display private #end class __ASSET__swflib_bin extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__lib_swflib_json extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else



#end

#if (openfl && !flash)

#if html5

#else

#end

#end
#end

#end
