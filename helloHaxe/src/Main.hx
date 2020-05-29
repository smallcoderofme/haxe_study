package;

/**
 * ...
 * @author sunshuai
 */
class Main 
{
	

	static function main() 
	{
		var p: Position = { x: 2, y: 3};
		var u: User = { username: "sunshuai", age: 29};
		
		var array = new Array();
		var t: IterableWithLength<Int> = array;
		
		var dync: Dynamic = 2;
		var integer: Int = 12;
		var i: MyAbstract = integer;
		trace("Position:", p.x, p.y, p);
		trace("User:", u.username, u.age, u.address);
		trace("IterableWithLength:", t, t.length);
		trace("Dynamic:", dync);
		trace("MyAbstract:", i, i.extendDoc());
	}
	
}

typedef Position = {
	var x: Int;
	@:optional var y: Int;
}

typedef User = {
	var username: String;
	var age: Int;
	var ?address: String;
}

typedef IterableWithLength<T> = {
  > Iterable<T>,
  // read only property
  var length(default, null):Int;
}

abstract MyAbstract(Int) from Int to Int {
  inline function new(i:Int) {
    this = i;
  }
  public function extendDoc() {
	return "Integer";
  }
}