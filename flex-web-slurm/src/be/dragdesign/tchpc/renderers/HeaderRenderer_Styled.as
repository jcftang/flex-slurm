package be.dragdesign.tchpc.renderers
{
	/**
	 *	be.dragdesign.tchpc.renderers | HeaderRenderer_Styled
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 27, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	import flash.display.GradientType;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	import mx.controls.advancedDataGridClasses.AdvancedDataGridHeaderRenderer;
	
	public class HeaderRenderer_Styled extends AdvancedDataGridHeaderRenderer
	{
		
		//
		//	FIELDS
		//
		
		public var chrome_col_1:uint 	= 0xb7b0b0;
		public var chrome_col_2:uint 	= 0xa49e9e;
		
		//
		//	CONSTRUCTOR
		//
		
		public function HeaderRenderer_Styled()
		{
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		
		
		//
		//	FUNCTIONS
		//
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void 
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			var mat:Matrix = new Matrix();
			mat.createGradientBox(unscaledWidth,unscaledHeight,90*Math.PI/180);
			var colors:Array = [chrome_col_1,0xa6a0a0,chrome_col_2];
			var alphas:Array = [1,1,1];
			var ratios:Array = [0,80,255];
			
			var g:Graphics = graphics;
			g.clear();
			g.lineStyle();
			g.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,mat);
			g.drawRect(-1,-2,unscaledWidth+2,unscaledHeight+4);
			g.endFill();
			
			var s:Sprite = new Sprite();
			s.graphics.beginFill(0x696969,1);
			s.graphics.drawRect(-1,unscaledHeight+1,unscaledWidth+2,1);
			s.graphics.endFill();
			addChild(s);
			s.mouseEnabled = false;
			s.mouseChildren = true;
		}
		
		//
		//	EVENTS
		//
		
		
	}
}