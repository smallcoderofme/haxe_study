package ; #if !flash


import openfl._internal.formats.swf.SWFLite;
import openfl.display.MovieClip;
import openfl.utils.Assets;


class MyMc extends openfl.display.MovieClip {


	

	public function new () {

		super ();

		/*
		if (!SWFLite.instances.exists ("JLpN88jNLikXUBUvLTca")) {

			SWFLite.instances.set ("JLpN88jNLikXUBUvLTca", SWFLite.unserialize (Assets.getText ("JLpN88jNLikXUBUvLTca")));

		}
		*/

		var swfLite = SWFLite.instances.get ("JLpN88jNLikXUBUvLTca");
		var symbol = swfLite.symbols.get (4);

		__fromSymbol (swfLite, cast symbol);

	}


}


#else
@:bind @:native("MyMc") class MyMc extends openfl.display.MovieClip {


	

	public function new () {

		super ();

	}


}
#end