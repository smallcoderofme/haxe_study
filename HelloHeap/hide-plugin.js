// Generated by Haxe 4.0.5
var $hx_exports = typeof exports != "undefined" ? exports : typeof window != "undefined" ? window : typeof self != "undefined" ? self : this;
$hx_exports["hide"] = $hx_exports["hide"] || {};
var $global = typeof window != "undefined" ? window : typeof global != "undefined" ? global : typeof self != "undefined" ? self : this;
var $hxClasses = $hxClasses || {},$estr = function() { return js.Boot.__string_rec(this,''); },$hxEnums = $hxEnums || {};
function $extend(from, fields) {
	var proto = Object.create(from);
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
Math.__name__ = "Math";
Math.__name__ = "Math";
var js = js || {};
if(!js.node) js.node = {};
js.node.ChildProcess = require("child_process");
js.node.Fs = require("fs");
js.node.Path = require("path");
js.node.Zlib = require("zlib");
if(!js.node.buffer) js.node.buffer = {};
js.node.buffer.Buffer = require("buffer").Buffer;
var prefabs = prefabs || {};
prefabs.MyPrefab1 = $hxClasses["prefabs.MyPrefab1"] = function(parent) {
	hrt.prefab.Object3D.call(this,parent);
	this.type = "myprefab";
};
prefabs.MyPrefab1.__name__ = "prefabs.MyPrefab1";
prefabs.MyPrefab1.__super__ = hrt.prefab.Object3D;
prefabs.MyPrefab1.prototype = $extend(hrt.prefab.Object3D.prototype,{
	make: function(ctx) {
		var ret = hrt.prefab.Object3D.prototype.make.call(this,ctx);
		return ret;
	}
	,getHideProps: function() {
		return { icon : "cog", name : "MyPrefab"};
	}
	,__class__: prefabs.MyPrefab1
});
$global.$haxeUID |= 0;
$hxClasses["Math"] = Math;
if( String.fromCodePoint == null ) String.fromCodePoint = function(c) { return c < 0x10000 ? String.fromCharCode(c) : String.fromCharCode((c>>10)+0xD7C0)+String.fromCharCode((c&0x3FF)+0xDC00); }
prefabs.MyPrefab1._ = hrt.prefab.Library.register("myprefab",prefabs.MyPrefab1);

//# sourceMappingURL=hide-plugin.js.map