package  {
	import flash.display.Sprite;
	import flash.display.MovieClip;
	/**
	 * @author Djamali
	 */
	public class EnemyMissileFactory extends Sprite{
		
		public static const HOMING_MISSILE : MovieClip;
		
		var enemy : Rocket;
		
		public function EnemyMissileFactory(type : MovieClip)
		{
			if(type == HOMING_MISSILE)
			{
				enemy = new EnemyMissile();
			}
			return enemy;
		}
	}
}