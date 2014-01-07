package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Lanke
	 */
	public class Main extends Sprite 
	{
		
		private var map:Vector.<Vector.<Sprite>> = new Vector.<Vector.<Sprite>>();
		public static var scoreBoard:TextField = new TextField();
		
		public const BOX_WIDTH = 42;
		
		public static var currentScore:int = 0;
		
		
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			addChild(scoreBoard);
			scoreBoard.x = 20;
			scoreBoard.y = 20;
			scoreBoard.addEventListener(Event.ENTER_FRAME, updateScore)
			scoreBoard.selectable = false;
			
			
			
			for (var i:int = 0; i < 10; i++) 
			{
				var enRad:Vector.<Sprite> = new Vector.<Sprite>();
				for (var j:int = 0; j < 10; j++) 
				{
					var t:Tiles = new Tiles();
					
					t.x = 100 + j * (t.width);
					t.y = 100 + i * (t.height);
					
					this.addEventListener(MouseEvent.CLICK, clicked)
					
					addChild(t);
					enRad.push(t);
					
				}
				map.push(enRad);
			}
		}
		
		public static function updateScore(scoreIncrease:int):void
		{
			currentScore += scoreIncrease;
			scoreBoard.text = "Score: " + String(currentScore);
		}
		public function clicked(e:MouseEvent):void
		{	
			Tiles(e.target).checkHit();
		}
		
		
	}
}