package hrt.prefab;

class Resource extends hxd.res.Resource {

	var lib : Prefab;

	override function watch( onChanged: Null<Void -> Void> ) {
		if( entry == null )
			return;
		if( onChanged == null ) {
			super.watch(null);
			return;
		}
		super.watch(function() { if( lib != null ) lib.reload(haxe.Json.parse(entry.getText())); onChanged(); });
	}

	public function load() : Prefab {
		if( lib != null )
			return lib;
		var data = haxe.Json.parse(entry.getText());
		lib = Library.create(entry.extension);
		lib.loadData(data);
		watch(function() {}); // auto lib reload
		return lib;
	}

	public static function make( p : Prefab ) {
		if( p == null ) throw "assert";
		var r = new Resource(null);
		r.lib = p;
		return r;
	}

}