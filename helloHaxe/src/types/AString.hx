package types;

/**
 * ...
 * @author sunshuai
 */
abstract AString(String) {
  public function new(s)
    this = s;

  @:arrayAccess function getInt1(k:Int) {
    return this.charAt(k);
  }

  @:arrayAccess public inline function getInt2(k:Int) {
    return this.charAt(k).toUpperCase();
  }
}
