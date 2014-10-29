package {
	import flash.display.Sprite;
	import flash.display.MovieClip;
	/**
	 * @author Djamali
	 */
	public class HeroMissileFactory extends Sprite{
		
		public static const HERO_MISSILE : MovieClip;
		
		public function HeroMissileFactory(type : MovieClip)
		{
			var hero : Rocket;
			
			if(type == HERO_MISSILE)
			{
				hero = new HeroMissile();
			}
			return hero;
		}
	}
}
