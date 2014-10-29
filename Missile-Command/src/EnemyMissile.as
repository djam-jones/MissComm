package {
	import flash.events.Event;
	import Rocket;
	
	/**
	 * @author Djamali
	 */
	public class EnemyMissile extends Rocket{
		
		private var _target:Launcher;
		
		public function EnemyMissile():void
		{
			if(stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		public function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			_asset = new EnemyRocket();
			addChild(_asset);
			
			speed = 8;
		}
	}
}