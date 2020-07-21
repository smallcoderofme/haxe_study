package ; #if !flash


import openfl._internal.formats.swf.SWFLite;
import openfl.display.MovieClip;
import openfl.utils.Assets;


class RM extends openfl.display.MovieClip {


	

	public function new () {

		super ();

		/*
		if (!SWFLite.instances.exists ("eB6U7By2DThBjBeXbDP2")) {

			SWFLite.instances.set ("eB6U7By2DThBjBeXbDP2", SWFLite.unserialize (Assets.getText ("eB6U7By2DThBjBeXbDP2")));

		}
		*/

		var swfLite = SWFLite.instances.get ("eB6U7By2DThBjBeXbDP2");
		var symbol = swfLite.symbols.get (6);

		__fromSymbol (swfLite, cast symbol);

	}


}


#else
@:bind @:native("RM") class RM extends openfl.display.MovieClip {


	

	public function new () {

		super ();

	}


}
#end