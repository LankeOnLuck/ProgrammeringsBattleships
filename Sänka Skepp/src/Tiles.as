package  
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Lanke
	 */
	public class Tiles extends Sprite
	{
		public const BOX_WIDTH:int = 42;
		
		private var isBoat:Boolean = false;
		
		public function Tiles() 
		{
			if (Math.random() > 0.8)
			{	
				this.isBoat = true;
			}
			
			this.graphics.beginFill(0x000080);
			this.graphics.drawRect(0, 0, BOX_WIDTH, BOX_WIDTH);
			this.graphics.endFill();
			
			this.graphics.beginFill(0x0000FF);
			this.graphics.drawRect(1, 1, BOX_WIDTH - 1, BOX_WIDTH - 1);
			this.graphics.endFill();
			
			
		}
		
		public function checkHit():void
		{
			if (isBoat == true)
			{
				Main.updateScore(10);
				
				this.graphics.beginFill(0xFF0000);
				this.graphics.drawRect(0, 0, BOX_WIDTH, BOX_WIDTH);
			}
			else
			{
				this.graphics.beginFill(0x000000);
				this.graphics.drawRect(0, 0, BOX_WIDTH, BOX_WIDTH);
			}
			
		}
		
	}

}