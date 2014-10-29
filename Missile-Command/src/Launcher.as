package {
	
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.display.Sprite;
	/**
	 * @author Djamali
	 */
	public class Launcher extends Sprite{
		
		public static const SHOOT	:	String	=	"SHOOT";
		
		private var _barrel : Barrel;
		private var _soundMaster:SoundManager = new SoundManager();
		
		public function Launcher()
		{
			super();
			
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			stage.addEventListener(MouseEvent.CLICK, fire);
			
			stage.addEventListener(MouseEvent.MOUSE_MOVE, aimBarrel);
			
			_barrel = new Barrel();
			addChild(_barrel);
		}
		
		private function aimBarrel(e:MouseEvent):void
		{
			var diffX:Number = e.localX - this.x;
			var diffY:Number = e.localY - this.y;
			
			var rotationInRadians:Number = Math.atan2(diffY, diffX);
			
			_barrel.rotation = rotationInRadians * (180 / Math.PI);
		}
		
		private function fire(e:MouseEvent):void
		{
			_barrel.play();
			
			dispatchEvent(new Event(SHOOT));
			_soundMaster.playSound(_soundMaster.rocketSnd, false);
		}
		
		public function get turretRotation():Number
		{
			return _barrel.rotation;
		}
	}
}
