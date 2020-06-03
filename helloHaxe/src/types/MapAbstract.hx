package types;

/**
 * ...
 * @author sunshuai
 */
abstract MapAbstract(Map<String, Int>) from Map<String, Int> to Map<String, Int>
{
	public function new(s)
	this = s;
	
	@:arrayAccess
	public inline function get(key:String) {
		trace("access get:", key);
		return this.get(key);
	}
	@:arrayAccess
	public inline function arrayAccess(k:String, v:Int):Int {
		trace("access set:", k, v);
		this.set(k, v);
		return v;
	}
}