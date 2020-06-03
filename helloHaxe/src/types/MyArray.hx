package types;

/**
 * ...
 * @author sunshuai
 */
@:forward(push, pop, reverse)
abstract MyArray<S>(Array<S>) {
  public inline function new() {
    this = [];
  }
}
