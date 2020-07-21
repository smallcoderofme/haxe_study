/**  example:
 *   
 * 		var collection: Array<MovieClip> = [
 *			new LT(), new CT(), new RT(),
 *			new LM(), new CM(), new RM(),
 *			new LB(), new CB(), new RB()
 *		];
 * 
 *		var grid9size = new Grid9Size();
 *		grid9size.cells(collection);
 *		grid9size.size(50, 20);
 */
package ui;

import openfl.display.Sprite;
import openfl.display.MovieClip;

class Grid9Size extends Sprite {

	private var ceilSize: Float = 0;
	
    private var lt: MovieClip;
    private var ct: MovieClip;
    private var rt: MovieClip;

    private var lm: MovieClip;
    private var cm: MovieClip;
    private var rm: MovieClip;

    private var lb: MovieClip;
    private var cb: MovieClip;
    private var rb: MovieClip;
	
	private var cellList: Array<MovieClip>;
	
    public function new() {
        super();
    }
	
	private function init(cells: Array<MovieClip>): Void 
	{
		this.ceilSize = cells[0].width;
		this.cellList = cells;
		this.lt = cells[0];
		this.addChild(lt);
		this.lt.x = 0;
		this.lt.y = 0;
		
		this.ct = cells[1];
		this.addChild(ct);
		this.ct.x = this.ceilSize;
		this.ct.y = 0;
		
		this.rt = cells[2];
		this.addChild(rt);
		this.rt.x = this.ceilSize * 2;
		this.rt.y = 0;
		
		this.lm = cells[3];
		this.addChild(lm);
		this.lm.x = 0;
		this.lm.y = this.ceilSize;
		
		this.cm = cells[4];
		this.addChild(cm);
		this.cm.x = this.ceilSize;
		this.cm.y = this.ceilSize;
		
		this.rm = cells[5];
		this.addChild(rm);
		this.rm.x = this.ceilSize*2;
		this.rm.y = this.ceilSize;
		
		this.lb = cells[6];
		this.addChild(lb);
		this.lb.x = 0;
		this.lb.y = this.ceilSize*2;
		
		this.cb = cells[7];
		this.addChild(cb);
		this.cb.x = this.ceilSize;
		this.cb.y = this.ceilSize*2;
		
		this.rb = cells[8];
		this.addChild(rb);
		this.rb.x = this.ceilSize*2;
		this.rb.y = this.ceilSize*2;
	}
	
	public function cells(cells: Array<MovieClip>): Void 
	{
		if (cells.length == 9) {
			this.init(cells);
		}
	}
	public function cellsLink(cells: Array<String>): Void 
	{
		
	}
	public override function set_width(value: Float): Float
	{
		this.setWidth(value);
		return value;
	}
	
	public override function set_height(value: Float): Float
	{
		this.setHeight(value);
		return value;
	}
	
    public function size(width: Float, height: Float): Void 
    {
		this.setWidth(width);
		this.setHeight(height);
	}
	
	private function setWidth(value: Float): Void 
	{
		this.ct.width = value - 4;
		this.cm.width = value - 4;
		this.cb.width = value - 4;
		
		this.rt.x = this.ct.x + value - 4;
		this.rm.x = this.cm.x + value - 4;
		this.rb.x = this.cb.x + value - 4;
	}
	private function setHeight(value: Float): Void
	{
		this.lm.height = value - 4;
		this.cm.height = value - 4;
		this.rm.height = value - 4;
		
		this.lb.y = this.lm.y + value - 4;
		this.cb.y = this.cm.y + value - 4;
		this.rb.y = this.rm.y + value - 4;
	}
}