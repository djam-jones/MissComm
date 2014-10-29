package {
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.Font;

	/**
	 * @author Djamali
	 */
	public class Menu extends Sprite {
		public static var _startButton : Start_Button;
		private var _optionsButton : Option_Button;
		private var _background : MovieClip;
		private var textClip : TextField = new TextField();
		private var textFormat : TextFormat = new TextFormat();
		
		private var _soundMaster:SoundManager = new SoundManager();
		
		public static const START:String = "gameStart";

		public function Menu() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);

			_background = new MenuBackground();
			addChild(_background);
			_background.x = 0;
			_background.y = 0;

			addEventListener(MouseEvent.CLICK, onClick);
			addEventListener(MouseEvent.MOUSE_OVER, onHoover);
			addEventListener(MouseEvent.MOUSE_OUT, offHoover);
		}

		public function init(e : Event = null) : void {
			removeEventListener(Event.ADDED_TO_STAGE, init);

			_startButton = new Start_Button();
			_startButton.x = 75;
			_startButton.y = stage.stageHeight / 1.85;
			addChild(_startButton);

			_optionsButton = new Option_Button();
			_optionsButton.x = _startButton.x;
			_optionsButton.y = _startButton.y + _startButton.height + 20;
			addChild(_optionsButton);

			var textFont : Font = new _8BIT;

			textFormat.size = 20;
			textFormat.font = textFont.fontName;

			textClip.embedFonts = true;
			textClip.defaultTextFormat = textFormat;
			textClip.textColor = 0xffffff;
			textClip.width = 450;
			textClip.height = 50;
			textClip.wordWrap = true;
		}

		private function onClick(e : MouseEvent) : void {
			if (e.target == _startButton) {
				trace("START Game");
				dispatchEvent(new Event(START));
				_soundMaster.playSound(_soundMaster.clickSnd, false);
			} 
			else if (e.target == _optionsButton) {
				trace("CHANGE Options");
				_soundMaster.playSound(_soundMaster.clickSnd, false);
			}
		}

		private function onHoover(e : MouseEvent) : void {
			if (e.target == _startButton) {
				addChild(textClip);
				textClip.text = "Start MISSILE COMMAND!";
				textClip.x = _startButton.x + _startButton.width + 100;
				textClip.y = _startButton.y - _startButton.height / 2;
				
				_soundMaster.playSound(_soundMaster.hoverSnd, false);
			} 
			else if (e.target == _optionsButton) {
				addChild(textClip);
				textClip.text = "Change Options";
				textClip.x = _optionsButton.x + _optionsButton.width + 100;
				textClip.y = _optionsButton.y - _optionsButton.height / 2;
				
				_soundMaster.playSound(_soundMaster.hoverSnd, false);
			}
		}

		private function offHoover(e : MouseEvent) : void {
			if (e.target == _startButton) {
				textClip.text = "";
			} 
			else if (e.target == _optionsButton) {
				textClip.text = "";
			}
		}
	}
}
