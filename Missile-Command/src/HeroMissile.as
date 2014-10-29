package {
	import Rocket;
	
	/**
	 * @author Djamali
	 */
	public class HeroMissile extends Rocket{
		
		public function HeroMissile():void
		{
			_asset = new HeroRocket();
		
			speed = 15;
			addChild(_asset);
		}
	}
}