package;

/**
 * ...
 * @author sunshuai
 */
import haxe.rtti.Meta;
import types.*;

typedef IterableWithLength<T> = {
  > Iterable<T>,
  // read only property
  var length(default, null):Int;
}

@author("Sunshuai")
@:keep
class MyClass {
  @range(1, 8)
  var value:Int;

  @broken(false)
  static function method() {}
}


class Main 
{

	static function main() 
	{
		//var p: Position = { x: 2, y: 3};
		//var u: User = { username: "sunshuai", age: 29};
		//
		//var array = new Array();
		//var t: IterableWithLength<Int> = array;
		//
		//var dync: Dynamic = 2;
		//var integer: Int = 12;
		//var i: MyAbstract = integer;
		//
		//var map = new Map< String, Int >();
		//map = ["key" => 2];
		//var ma: MapAbstract = map;
		//ma["foo"] = 6;
		//ma.arrayAccess("setter", 7);
		//
		//var a = new AString("foo");
		//trace("AString: ", a[0], "getInt2:", a.getInt2(0)); // f
		//
		//trace("Position:", p.x, p.y, p);
		//trace("User:", u.username, u.age, u.address);
		//trace("IterableWithLength:", t, t.length);
		//trace("Dynamic:", dync);
		//trace("MyAbstract:", i, i.extendDoc());
		//trace("MapAbstract:", ma, ma["key"], ma["foo"], ma.get("setter"));
		//
	    //var myArray: MyArray<Int> = new MyArray<Int>();
		//myArray.push(2);
		//myArray.push(3);
		//myArray.push(5);
		//myArray.push(7);
		//var arr: Array<Int> = [1, 2, 3, 4] ;
		//arr.reverse();
		//myArray.reverse();
		//trace("myArray:", myArray, arr);
		//myArray.push(12);
		//trace("myArray: push", myArray);
		//myArray.pop();
		//trace("myArray: pop", myArray);
		//
		//var base: Base = new Base();
		//var child: Base.Child = new Base.Child();
		//trace(Meta.getType(MyClass));
		//trace(Meta.getFields(MyClass).value.range);
		//trace(Meta.getStatics(MyClass).method);
		//trace(base, child);
		
	
		
		var array = [1, 2, 3, 4];
		trace("---------------------------array length:",array.length);
		var t: IterableWithLength<Int> = array;
		trace("---------------------------t length:",t.length);
		
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



abstract MyAbstract(Int) from Int to Int {
  inline function new(i:Int) {
    this = i;
  }
  public function extendDoc() {
	return "Integer";
  }
}
