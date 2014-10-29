package {
	import flash.media.Sound;
	/**
	 * @author Djamali
	 */
	public class SoundManager {
		
		public var clickSnd:Sound = new clickSFX();
		public var hoverSnd:Sound = new hoverSFX();
		public var rocketSnd:Sound = new launchSFX();
		public var splosionSnd:Sound = new splosionSFX();
		public var titleMusic:Sound = new MainMusic();
		public var gameMusic:Sound = new GameMusic();
		
		public function playSound(sound:Sound, loop:Boolean):void {
			if(loop) {
				sound.play(1, 999);
			} 
			else {
				sound.play();
			}	
		}
	}
}
