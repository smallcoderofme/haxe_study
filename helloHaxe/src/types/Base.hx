package types;

/**
 * ...
 * @author sunshuai
 */
class Base 
{

	public function new() 
	{
		trace("This is a Base class");
	}
	
}

class Child extends Base {
	public function new()
	{
		super();
		trace("This is a Child class");
	}
}