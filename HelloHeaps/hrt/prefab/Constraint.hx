package hrt.prefab;

class Constraint extends Prefab {

	public var object(default,null) : String;
	public var target(default,null) : String;
	public var positionOnly(default,null) : Bool;

	override public function load(v:Dynamic) {
		object = v.object;
		target = v.target;
		positionOnly = v.positionOnly;
	}

	override function save() {
		return { object : object, target : target, positionOnly : positionOnly };
	}

	public function apply( root : h3d.scene.Object ) {
		var srcObj = root.getObjectByName(object.split(".").pop());
		var targetObj = root.getObjectByName(target.split(".").pop());
		if( srcObj != null && targetObj != null ){
			srcObj.follow = targetObj;
			srcObj.followPositionOnly = positionOnly;
		}
		return srcObj;
	}

	override function makeInstance( ctx : Context ) {
		if(!enabled) return ctx;
		var srcObj = ctx.locateObject(object);
		var targetObj = ctx.locateObject(target);
		if( srcObj != null && targetObj != null ){
			srcObj.follow = targetObj;
			srcObj.followPositionOnly = positionOnly;
		}
		return ctx;
	}

	#if editor
	override function getHideProps() : HideProps {
		return { icon : "lock", name : "Constraint" };
	}

	override function edit(ctx:EditContext) {
		var curObj = ctx.rootContext.locateObject(object);
		var props = ctx.properties.add(new hide.Element('
			<dl>
				<dt>Source</dt><dd><select field="object"><option value="">-- Choose --</option></select>
				<dt>Target</dt><dd><select field="target"><option value="">-- Choose --</option></select>
				<dt>Position Only</dt><dd><input type="checkbox" field="positionOnly"/></dd>
			</dl>
		'),this, function(_) {
			if( curObj != null ) curObj.follow = null;
			makeInstance(ctx.rootContext);
			curObj = ctx.rootContext.locateObject(object);
		});

		for( select in [props.find("[field=object]"), props.find("[field=target]")] ) {
			for( path in ctx.getNamedObjects() ) {
				var parts = path.split(".");
				var opt = new hide.Element("<option>").attr("value", path).html([for( p in 1...parts.length ) "&nbsp; "].join("") + parts.pop());
				select.append(opt);
			}
			select.val(Reflect.field(this, select.attr("field")));
		}
	}
	#end

	static var _ = Library.register("constraint", Constraint);

}