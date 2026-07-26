package backend;

import flixel.util.FlxSave;
import flixel.input.keyboard.FlxKey;
import flixel.input.gamepad.FlxGamepadInputID;

import states.TitleState;

// Add a variable here and it will get automatically saved
@:structInit class SaveVariables {
	public var downScroll:Bool = false;
	public var middleScroll:Bool = false;
	public var opponentStrums:Bool = true;
	public var showFPS:Bool = true;
	public var flashing:Bool = true;
	public var autoPause:Bool = true;
	public var antialiasing:Bool = true;
	public var noteSkin:String = 'Default';
	public var splashSkin:String = 'Psych';
	public var splashAlpha:Float = 0.6;
	public var lowQuality:Bool = false;
	public var shaders:Bool = true;
	public var disableNoteShaders:Bool = false;
	public var cacheOnGPU:Bool = #if !switch false #else true #end; // GPU Caching made by Raltyro
	public var framerate:Int = 60;
	public var camZooms:Bool = true;
	public var hideHud:Bool = false;
	public var noteOffset:Int = 0;
	public var arrowRGB:Array<Array<FlxColor>> = [
		[0xFFC24B99, 0xFFFFFFFF, 0xFF3C1F56],
		[0xFF00FFFF, 0xFFFFFFFF, 0xFF1542B7],
		[0xFF12FA05, 0xFFFFFFFF, 0xFF0A4447],
		[0xFFF9393F, 0xFFFFFFFF, 0xFF651038]];
	public var arrowRGBPixel:Array<Array<FlxColor>> = [
		[0xFFE276FF, 0xFFFFF9FF, 0xFF60008D],
		[0xFF3DCAFF, 0xFFF4FFFF, 0xFF003060],
		[0xFF71E300, 0xFFF6FFE6, 0xFF003100],
		[0xFFFF884E, 0xFFFFFAF5, 0xFF6C0000]];

	public var arrowRGBExtra:Array<Array<FlxColor>> = [
		[0xFFC24B99, 0xFFFFFFFF, 0xFF3C1F56],
		[0xFF00FFFF, 0xFFFFFFFF, 0xFF1542B7],
		[0xFF12FA05, 0xFFFFFFFF, 0xFF0A4447],
		[0xFFF9393F, 0xFFFFFFFF, 0xFF651038],
		[0xFF999999, 0xFFFFFFFF, 0xFF201E31],
		[0xFFFFFF00, 0xFFFFFFFF, 0xFF993300],
		[0xFF8b4aff, 0xFFFFFFFF, 0xFF3b177d],
		[0xFFFF0000, 0xFFFFFFFF, 0xFF660000],
		[0xFF0033ff, 0xFFFFFFFF, 0xFF000066],
		[0xFFFF69B4, 0xFFFFFFFF, 0xFF8B0045],
		[0xFFFF8C00, 0xFFFFFFFF, 0xFF8B4500],
		[0xFF00CED1, 0xFFFFFFFF, 0xFF008B8B],
		[0xFFFF00FF, 0xFFFFFFFF, 0xFF8B008B],
		[0xFF00FF00, 0xFFFFFFFF, 0xFF006400],
		[0xFF4B0082, 0xFFFFFFFF, 0xFF2E0854],
		[0xFF800000, 0xFFFFFFFF, 0xFF400000],
		[0xFF000080, 0xFFFFFFFF, 0xFF000040],
		[0xFF008080, 0xFFFFFFFF, 0xFF004040],
		[0xFFFF7F50, 0xFFFFFFFF, 0xFF8B3A2F],
		[0xFFFFD700, 0xFFFFFFFF, 0xFF8B6914],
		[0xFFC0C0C0, 0xFFFFFFFF, 0xFF606060],
		[0xFFDC143C, 0xFFFFFFFF, 0xFF6E0B21],
		[0xFF808000, 0xFFFFFFFF, 0xFF404000],
		[0xFF40E0D0, 0xFFFFFFFF, 0xFF207068],
		[0xFFDDA0DD, 0xFFFFFFFF, 0xFF6E5077],
		[0xFFA0522D, 0xFFFFFFFF, 0xFF502916]];
	public var arrowRGBPixelExtra:Array<Array<FlxColor>> = [
		[0xFFE276FF, 0xFFFFF9FF, 0xFF60008D],
		[0xFF3DCAFF, 0xFFF4FFFF, 0xFF003060],
		[0xFF71E300, 0xFFF6FFE6, 0xFF003100],
		[0xFFFF884E, 0xFFFFFAF5, 0xFF6C0000],
		[0xFFb6b6b6, 0xFFFFFFFF, 0xFF444444],
		[0xFFffd94a, 0xFFfffff9, 0xFF663500],
		[0xFFB055BC, 0xFFf4f4ff, 0xFF4D0060],
		[0xFFdf3e23, 0xFFffe6e9, 0xFF440000],
		[0xFF2F69E5, 0xFFf5f5ff, 0xFF000F5D],
		[0xFFff69b4, 0xFFfff0f5, 0xFF8B0045],
		[0xFFffa500, 0xFFfffff0, 0xFF8B4500],
		[0xFF00ced1, 0xFFf0ffff, 0xFF008B8B],
		[0xFFff00ff, 0xFFf0f0f0, 0xFF8B008B],
		[0xFF00ff00, 0xFFf0fff0, 0xFF006400],
		[0xFF4b0082, 0xFFf0f0ff, 0xFF2E0854],
		[0xFF800000, 0xFFf5f0f0, 0xFF400000],
		[0xFF000080, 0xFFf0f0f5, 0xFF000040],
		[0xFF008080, 0xFFf0f5f5, 0xFF004040],
		[0xFFff7f50, 0xFFfff5f0, 0xFF8B3A2F],
		[0xFFffd700, 0xFFf5f5f0, 0xFF8B6914],
		[0xFFc0c0c0, 0xFFf5f5f5, 0xFF606060],
		[0xFFdc143c, 0xFFf5f0f0, 0xFF6E0B21],
		[0xFF808000, 0xFFf5f5f0, 0xFF404000],
		[0xFF40e0d0, 0xFFf0f5f5, 0xFF207068],
		[0xFFdda0dd, 0xFFf5f0f5, 0xFF6E5077],
		[0xFFa0522d, 0xFFf5f0f0, 0xFF502916]];

	public var ghostTapping:Bool = true;
	public var timeBarType:String = 'Time Left';
	public var scoreZoom:Bool = true;
	public var noReset:Bool = false;
	public var healthBarAlpha:Float = 1;
	public var hitsoundVolume:Float = 0;
	public var pauseMusic:String = 'Tea Time';
	public var checkForUpdates:Bool = true;
	public var comboStacking:Bool = true;
	public var gameplaySettings:Map<String, Dynamic> = [
		'scrollspeed' => 1.0,
		'scrolltype' => 'multiplicative', 
		// anyone reading this, amod is multiplicative speed mod, cmod is constant speed mod, and xmod is bpm based speed mod.
		// an amod example would be chartSpeed * multiplier
		// cmod would just be constantSpeed = chartSpeed
		// and xmod basically works by basing the speed on the bpm.
		// iirc (beatsPerSecond * (conductorToNoteDifference / 1000)) * noteSize (110 or something like that depending on it, prolly just use note.height)
		// bps is calculated by bpm / 60
		// oh yeah and you'd have to actually convert the difference to seconds which I already do, because this is based on beats and stuff. but it should work
		// just fine. but I wont implement it because I don't know how you handle sustains and other stuff like that.
		// oh yeah when you calculate the bps divide it by the songSpeed or rate because it wont scroll correctly when speeds exist.
		// -kade
		'songspeed' => 1.0,
		'healthgain' => 1.0,
		'healthloss' => 1.0,
		'instakill' => false,
		'practice' => false,
		'botplay' => false,
		'opponentplay' => false
	];

	public var comboOffset:Array<Int> = [0, 0, 0, 0];
	public var ratingOffset:Int = 0;
	public var sickWindow:Float = 45.0;
	public var goodWindow:Float = 90.0;
	public var badWindow:Float = 135.0;
	public var safeFrames:Float = 10.0;
	public var guitarHeroSustains:Bool = true;
	public var discordRPC:Bool = true;
	public var loadingScreen:Bool = true;
	public var language:String = 'en-US';
	public var simplifiedComboCounter:Bool = false;
	public var thirdDigitSeparator:Bool = false;
	public var showComboPopup:Bool = true;
	public var showComboNumPopup:Bool = true;
	public var showRatingPopup:Bool = true;
}

class ClientPrefs {
	public static var data:SaveVariables = {};
	public static var defaultData:SaveVariables = {};

	//Every key has two binds, add your key bind down here and then add your control on options/ControlsSubState.hx and Controls.hx
	public static var keyBinds:Map<String, Array<FlxKey>> = [
		//Key Bind, Name for ControlsSubState
		'note_1'		=> [SPACE],
		
		'note_2a'		=> [A, LEFT],
		'note_2b'		=> [D, RIGHT],
		
		'note_3a'		=> [A, LEFT],
		'note_3b'		=> [SPACE],
		'note_3c'		=> [D, RIGHT],
		
		'note_up'		=> [W, UP],
		'note_left'		=> [A, LEFT],
		'note_down'		=> [S, DOWN],
		'note_right'	=> [D, RIGHT],
		
		'note_5a'		=> [A, LEFT],
		'note_5b'		=> [S, DOWN],
		'note_5c'		=> [SPACE],
		'note_5d'		=> [W, UP],
		'note_5e'		=> [D, RIGHT],
		
		'note_6a'		=> [S],
		'note_6b'		=> [D],
		'note_6c'		=> [F],
		'note_6d'		=> [J],
		'note_6e'		=> [K],
		'note_6f'		=> [L],
		
		'note_7a'		=> [S],
		'note_7b'		=> [D],
		'note_7c'		=> [F],
		'note_7d'		=> [SPACE],
		'note_7e'		=> [J],
		'note_7f'		=> [K],
		'note_7g'		=> [L],
		
		'note_8a'		=> [A],
		'note_8b'		=> [S],
		'note_8c'		=> [D],
		'note_8d'		=> [F],
		'note_8e'		=> [H],
		'note_8f'		=> [J],
		'note_8g'		=> [K],
		'note_8h'		=> [L],
		
		'note_9a'		=> [A],
		'note_9b'		=> [S],
		'note_9c'		=> [D],
		'note_9d'		=> [F],
		'note_9e'		=> [SPACE],
		'note_9f'		=> [H],
		'note_9g'		=> [J],
		'note_9h'		=> [K],
		'note_9i'		=> [L],
		
		'note_10a'		=> [A],
		'note_10b'		=> [S],
		'note_10c'		=> [D],
		'note_10d'		=> [F],
		'note_10e'		=> [G],
		'note_10f'		=> [H],
		'note_10g'		=> [J],
		'note_10h'		=> [K],
		'note_10i'		=> [L],
		'note_10j'		=> [SEMICOLON],
		
		'note_11a'		=> [Q],
		'note_11b'		=> [W],
		'note_11c'		=> [E],
		'note_11d'		=> [R],
		'note_11e'		=> [T],
		'note_11f'		=> [Y],
		'note_11g'		=> [U],
		'note_11h'		=> [I],
		'note_11i'		=> [O],
		'note_11j'		=> [P],
		'note_11k'		=> [LBRACKET],
		
		'note_12a'		=> [Q],
		'note_12b'		=> [W],
		'note_12c'		=> [E],
		'note_12d'		=> [R],
		'note_12e'		=> [T],
		'note_12f'		=> [Y],
		'note_12g'		=> [U],
		'note_12h'		=> [I],
		'note_12i'		=> [O],
		'note_12j'		=> [P],
		'note_12k'		=> [LBRACKET],
		'note_12l'		=> [RBRACKET],
		
		'note_13a'		=> [TAB],
		'note_13b'		=> [Q],
		'note_13c'		=> [W],
		'note_13d'		=> [E],
		'note_13e'		=> [R],
		'note_13f'		=> [T],
		'note_13g'		=> [Y],
		'note_13h'		=> [U],
		'note_13i'		=> [I],
		'note_13j'		=> [O],
		'note_13k'		=> [P],
		'note_13l'		=> [LBRACKET],
		'note_13m'		=> [RBRACKET],
		
		'note_14a'		=> [TAB],
		'note_14b'		=> [Q],
		'note_14c'		=> [W],
		'note_14d'		=> [E],
		'note_14e'		=> [R],
		'note_14f'		=> [T],
		'note_14g'		=> [Y],
		'note_14h'		=> [U],
		'note_14i'		=> [I],
		'note_14j'		=> [O],
		'note_14k'		=> [P],
		'note_14l'		=> [LBRACKET],
		'note_14m'		=> [RBRACKET],
		'note_14n'		=> [BACKSPACE],
		
		'note_15a'		=> [GRAVEACCENT],
		'note_15b'		=> [Q],
		'note_15c'		=> [W],
		'note_15d'		=> [E],
		'note_15e'		=> [R],
		'note_15f'		=> [T],
		'note_15g'		=> [Y],
		'note_15h'		=> [U],
		'note_15i'		=> [I],
		'note_15j'		=> [O],
		'note_15k'		=> [P],
		'note_15l'		=> [LBRACKET],
		'note_15m'		=> [RBRACKET],
		'note_15n'		=> [BACKSPACE],
		'note_15o'		=> [ENTER],
		
		'note_16a'		=> [GRAVEACCENT],
		'note_16b'		=> [ONE],
		'note_16c'		=> [Q],
		'note_16d'		=> [W],
		'note_16e'		=> [E],
		'note_16f'		=> [R],
		'note_16g'		=> [T],
		'note_16h'		=> [Y],
		'note_16i'		=> [U],
		'note_16j'		=> [I],
		'note_16k'		=> [O],
		'note_16l'		=> [P],
		'note_16m'		=> [LBRACKET],
		'note_16n'		=> [RBRACKET],
		'note_16o'		=> [BACKSPACE],
		'note_16p'		=> [ENTER],
		
		'note_17a'		=> [GRAVEACCENT],
		'note_17b'		=> [ONE],
		'note_17c'		=> [TWO],
		'note_17d'		=> [Q],
		'note_17e'		=> [W],
		'note_17f'		=> [E],
		'note_17g'		=> [R],
		'note_17h'		=> [T],
		'note_17i'		=> [Y],
		'note_17j'		=> [U],
		'note_17k'		=> [I],
		'note_17l'		=> [O],
		'note_17m'		=> [P],
		'note_17n'		=> [LBRACKET],
		'note_17o'		=> [RBRACKET],
		'note_17p'		=> [BACKSPACE],
		'note_17q'		=> [ENTER],
		
		'note_18a'		=> [GRAVEACCENT],
		'note_18b'		=> [ONE],
		'note_18c'		=> [TWO],
		'note_18d'		=> [THREE],
		'note_18e'		=> [Q],
		'note_18f'		=> [W],
		'note_18g'		=> [E],
		'note_18h'		=> [R],
		'note_18i'		=> [T],
		'note_18j'		=> [Y],
		'note_18k'		=> [U],
		'note_18l'		=> [I],
		'note_18m'		=> [O],
		'note_18n'		=> [P],
		'note_18o'		=> [LBRACKET],
		'note_18p'		=> [RBRACKET],
		'note_18q'		=> [BACKSPACE],
		'note_18r'		=> [ENTER],
		
		'note_19a'		=> [GRAVEACCENT],
		'note_19b'		=> [ONE],
		'note_19c'		=> [TWO],
		'note_19d'		=> [THREE],
		'note_19e'		=> [FOUR],
		'note_19f'		=> [Q],
		'note_19g'		=> [W],
		'note_19h'		=> [E],
		'note_19i'		=> [R],
		'note_19j'		=> [T],
		'note_19k'		=> [Y],
		'note_19l'		=> [U],
		'note_19m'		=> [I],
		'note_19n'		=> [O],
		'note_19o'		=> [P],
		'note_19p'		=> [LBRACKET],
		'note_19q'		=> [RBRACKET],
		'note_19r'		=> [BACKSPACE],
		'note_19s'		=> [ENTER],
		
		'note_20a'		=> [GRAVEACCENT],
		'note_20b'		=> [ONE],
		'note_20c'		=> [TWO],
		'note_20d'		=> [THREE],
		'note_20e'		=> [FOUR],
		'note_20f'		=> [FIVE],
		'note_20g'		=> [Q],
		'note_20h'		=> [W],
		'note_20i'		=> [E],
		'note_20j'		=> [R],
		'note_20k'		=> [T],
		'note_20l'		=> [Y],
		'note_20m'		=> [U],
		'note_20n'		=> [I],
		'note_20o'		=> [O],
		'note_20p'		=> [P],
		'note_20q'		=> [LBRACKET],
		'note_20r'		=> [RBRACKET],
		'note_20s'		=> [BACKSPACE],
		'note_20t'		=> [ENTER],
		
		'note_21a'		=> [GRAVEACCENT],
		'note_21b'		=> [ONE],
		'note_21c'		=> [TWO],
		'note_21d'		=> [THREE],
		'note_21e'		=> [FOUR],
		'note_21f'		=> [FIVE],
		'note_21g'		=> [SIX],
		'note_21h'		=> [Q],
		'note_21i'		=> [W],
		'note_21j'		=> [E],
		'note_21k'		=> [R],
		'note_21l'		=> [T],
		'note_21m'		=> [Y],
		'note_21n'		=> [U],
		'note_21o'		=> [I],
		'note_21p'		=> [O],
		'note_21q'		=> [P],
		'note_21r'		=> [LBRACKET],
		'note_21s'		=> [RBRACKET],
		'note_21t'		=> [BACKSPACE],
		'note_21u'		=> [ENTER],
		
		'note_22a'		=> [GRAVEACCENT],
		'note_22b'		=> [ONE],
		'note_22c'		=> [TWO],
		'note_22d'		=> [THREE],
		'note_22e'		=> [FOUR],
		'note_22f'		=> [FIVE],
		'note_22g'		=> [SIX],
		'note_22h'		=> [SEVEN],
		'note_22i'		=> [Q],
		'note_22j'		=> [W],
		'note_22k'		=> [E],
		'note_22l'		=> [R],
		'note_22m'		=> [T],
		'note_22n'		=> [Y],
		'note_22o'		=> [U],
		'note_22p'		=> [I],
		'note_22q'		=> [O],
		'note_22r'		=> [P],
		'note_22s'		=> [LBRACKET],
		'note_22t'		=> [RBRACKET],
		'note_22u'		=> [BACKSPACE],
		'note_22v'		=> [ENTER],
		
		'note_23a'		=> [GRAVEACCENT],
		'note_23b'		=> [ONE],
		'note_23c'		=> [TWO],
		'note_23d'		=> [THREE],
		'note_23e'		=> [FOUR],
		'note_23f'		=> [FIVE],
		'note_23g'		=> [SIX],
		'note_23h'		=> [SEVEN],
		'note_23i'		=> [EIGHT],
		'note_23j'		=> [Q],
		'note_23k'		=> [W],
		'note_23l'		=> [E],
		'note_23m'		=> [R],
		'note_23n'		=> [T],
		'note_23o'		=> [Y],
		'note_23p'		=> [U],
		'note_23q'		=> [I],
		'note_23r'		=> [O],
		'note_23s'		=> [P],
		'note_23t'		=> [LBRACKET],
		'note_23u'		=> [RBRACKET],
		'note_23v'		=> [BACKSPACE],
		'note_23w'		=> [ENTER],
		
		'note_24a'		=> [GRAVEACCENT],
		'note_24b'		=> [ONE],
		'note_24c'		=> [TWO],
		'note_24d'		=> [THREE],
		'note_24e'		=> [FOUR],
		'note_24f'		=> [FIVE],
		'note_24g'		=> [SIX],
		'note_24h'		=> [SEVEN],
		'note_24i'		=> [EIGHT],
		'note_24j'		=> [NINE],
		'note_24k'		=> [Q],
		'note_24l'		=> [W],
		'note_24m'		=> [E],
		'note_24n'		=> [R],
		'note_24o'		=> [T],
		'note_24p'		=> [Y],
		'note_24q'		=> [U],
		'note_24r'		=> [I],
		'note_24s'		=> [O],
		'note_24t'		=> [P],
		'note_24u'		=> [LBRACKET],
		'note_24v'		=> [RBRACKET],
		'note_24w'		=> [BACKSPACE],
		'note_24x'		=> [ENTER],
		
		'note_25a'		=> [GRAVEACCENT],
		'note_25b'		=> [ONE],
		'note_25c'		=> [TWO],
		'note_25d'		=> [THREE],
		'note_25e'		=> [FOUR],
		'note_25f'		=> [FIVE],
		'note_25g'		=> [SIX],
		'note_25h'		=> [SEVEN],
		'note_25i'		=> [EIGHT],
		'note_25j'		=> [NINE],
		'note_25k'		=> [ZERO],
		'note_25l'		=> [Q],
		'note_25m'		=> [W],
		'note_25n'		=> [E],
		'note_25o'		=> [R],
		'note_25p'		=> [T],
		'note_25q'		=> [Y],
		'note_25r'		=> [U],
		'note_25s'		=> [I],
		'note_25t'		=> [O],
		'note_25u'		=> [P],
		'note_25v'		=> [LBRACKET],
		'note_25w'		=> [RBRACKET],
		'note_25x'		=> [BACKSPACE],
		'note_25y'		=> [ENTER],
		
		'note_26a'		=> [GRAVEACCENT],
		'note_26b'		=> [ONE],
		'note_26c'		=> [TWO],
		'note_26d'		=> [THREE],
		'note_26e'		=> [FOUR],
		'note_26f'		=> [FIVE],
		'note_26g'		=> [SIX],
		'note_26h'		=> [SEVEN],
		'note_26i'		=> [EIGHT],
		'note_26j'		=> [NINE],
		'note_26k'		=> [ZERO],
		'note_26l'		=> [MINUS],
		'note_26m'		=> [Q],
		'note_26n'		=> [W],
		'note_26o'		=> [E],
		'note_26p'		=> [R],
		'note_26q'		=> [T],
		'note_26r'		=> [Y],
		'note_26s'		=> [U],
		'note_26t'		=> [I],
		'note_26u'		=> [O],
		'note_26v'		=> [P],
		'note_26w'		=> [LBRACKET],
		'note_26x'		=> [RBRACKET],
		'note_26y'		=> [BACKSPACE],
		'note_26z'		=> [ENTER],
		
		'ui_up'			=> [W, UP],
		'ui_left'		=> [A, LEFT],
		'ui_down'		=> [S, DOWN],
		'ui_right'		=> [D, RIGHT],
		
		'accept'		=> [SPACE, ENTER],
		'back'			=> [BACKSPACE, ESCAPE],
		'pause'			=> [ENTER, ESCAPE],
		'reset'			=> [R],
		
		'volume_mute'	=> [ZERO],
		'volume_up'		=> [NUMPADPLUS, PLUS],
		'volume_down'	=> [NUMPADMINUS, MINUS],
		
		'debug_1'		=> [SEVEN],
		'debug_2'		=> [EIGHT]
	];
	public static var gamepadBinds:Map<String, Array<FlxGamepadInputID>> = [
		'note_1'		=> [RIGHT_SHOULDER],
		
		'note_2a'		=> [DPAD_LEFT, X],
		'note_2b'		=> [DPAD_RIGHT, B],
		
		'note_3a'		=> [DPAD_LEFT, X],
		'note_3b'		=> [RIGHT_SHOULDER],
		'note_3c'		=> [DPAD_RIGHT, B],
		
		'note_up'		=> [DPAD_UP, Y],
		'note_left'		=> [DPAD_LEFT, X],
		'note_down'		=> [DPAD_DOWN, A],
		'note_right'	=> [DPAD_RIGHT, B],
		
		'note_5a'		=> [DPAD_LEFT, X],
		'note_5b'		=> [DPAD_DOWN, A],
		'note_5c'		=> [RIGHT_SHOULDER],
		'note_5d'		=> [DPAD_UP, Y],
		'note_5e'		=> [DPAD_RIGHT, B],
		
		'note_6a'		=> [DPAD_LEFT],
		'note_6b'		=> [DPAD_DOWN],
		'note_6c'		=> [DPAD_RIGHT],
		'note_6d'		=> [X],
		'note_6e'		=> [A],
		'note_6f'		=> [B],
		
		'note_7a'		=> [DPAD_LEFT],
		'note_7b'		=> [DPAD_DOWN],
		'note_7c'		=> [DPAD_RIGHT],
		'note_7d'		=> [RIGHT_SHOULDER],
		'note_7e'		=> [X],
		'note_7f'		=> [A],
		'note_7g'		=> [B],
		
		'note_8a'		=> [DPAD_LEFT],
		'note_8b'		=> [DPAD_DOWN],
		'note_8c'		=> [DPAD_UP],
		'note_8d'		=> [DPAD_RIGHT],
		'note_8e'		=> [X],
		'note_8f'		=> [A],
		'note_8g'		=> [Y],
		'note_8h'		=> [B],
		
		'note_9a'		=> [DPAD_LEFT],
		'note_9b'		=> [DPAD_DOWN],
		'note_9c'		=> [DPAD_UP],
		'note_9d'		=> [DPAD_RIGHT],
		'note_9e'		=> [RIGHT_SHOULDER],
		'note_9f'		=> [X],
		'note_9g'		=> [A],
		'note_9h'		=> [Y],
		'note_9i'		=> [B],
		
		'note_10a'		=> [DPAD_LEFT],
		'note_10b'		=> [DPAD_DOWN],
		'note_10c'		=> [DPAD_UP],
		'note_10d'		=> [DPAD_RIGHT],
		'note_10e'		=> [LEFT_SHOULDER],
		'note_10f'		=> [RIGHT_SHOULDER],
		'note_10g'		=> [X],
		'note_10h'		=> [A],
		'note_10i'		=> [Y],
		'note_10j'		=> [B],
		
		'note_11a'		=> [DPAD_LEFT],
		'note_11b'		=> [DPAD_DOWN],
		'note_11c'		=> [DPAD_UP],
		'note_11d'		=> [DPAD_RIGHT],
		'note_11e'		=> [LEFT_SHOULDER],
		'note_11f'		=> [RIGHT_SHOULDER],
		'note_11g'		=> [X],
		'note_11h'		=> [A],
		'note_11i'		=> [Y],
		'note_11j'		=> [B],
		'note_11k'		=> [LEFT_TRIGGER],
		
		'note_12a'		=> [DPAD_LEFT],
		'note_12b'		=> [DPAD_DOWN],
		'note_12c'		=> [DPAD_UP],
		'note_12d'		=> [DPAD_RIGHT],
		'note_12e'		=> [LEFT_SHOULDER],
		'note_12f'		=> [RIGHT_SHOULDER],
		'note_12g'		=> [X],
		'note_12h'		=> [A],
		'note_12i'		=> [Y],
		'note_12j'		=> [B],
		'note_12k'		=> [LEFT_TRIGGER],
		'note_12l'		=> [RIGHT_TRIGGER],
		
		'note_13a'		=> [DPAD_LEFT],
		'note_13b'		=> [DPAD_DOWN],
		'note_13c'		=> [DPAD_UP],
		'note_13d'		=> [DPAD_RIGHT],
		'note_13e'		=> [LEFT_SHOULDER],
		'note_13f'		=> [RIGHT_SHOULDER],
		'note_13g'		=> [X],
		'note_13h'		=> [A],
		'note_13i'		=> [Y],
		'note_13j'		=> [B],
		'note_13k'		=> [LEFT_TRIGGER],
		'note_13l'		=> [RIGHT_TRIGGER],
		'note_13m'		=> [LEFT_STICK_CLICK],
		
		'note_14a'		=> [DPAD_LEFT],
		'note_14b'		=> [DPAD_DOWN],
		'note_14c'		=> [DPAD_UP],
		'note_14d'		=> [DPAD_RIGHT],
		'note_14e'		=> [LEFT_SHOULDER],
		'note_14f'		=> [RIGHT_SHOULDER],
		'note_14g'		=> [X],
		'note_14h'		=> [A],
		'note_14i'		=> [Y],
		'note_14j'		=> [B],
		'note_14k'		=> [LEFT_TRIGGER],
		'note_14l'		=> [RIGHT_TRIGGER],
		'note_14m'		=> [LEFT_STICK_CLICK],
		'note_14n'		=> [RIGHT_STICK_CLICK],
		
		'note_15a'		=> [DPAD_LEFT],
		'note_15b'		=> [DPAD_DOWN],
		'note_15c'		=> [DPAD_UP],
		'note_15d'		=> [DPAD_RIGHT],
		'note_15e'		=> [LEFT_SHOULDER],
		'note_15f'		=> [RIGHT_SHOULDER],
		'note_15g'		=> [X],
		'note_15h'		=> [A],
		'note_15i'		=> [Y],
		'note_15j'		=> [B],
		'note_15k'		=> [LEFT_TRIGGER],
		'note_15l'		=> [RIGHT_TRIGGER],
		'note_15m'		=> [LEFT_STICK_CLICK],
		'note_15n'		=> [RIGHT_STICK_CLICK],
		'note_15o'		=> [START],
		
		'note_16a'		=> [DPAD_LEFT],
		'note_16b'		=> [DPAD_DOWN],
		'note_16c'		=> [DPAD_UP],
		'note_16d'		=> [DPAD_RIGHT],
		'note_16e'		=> [LEFT_SHOULDER],
		'note_16f'		=> [RIGHT_SHOULDER],
		'note_16g'		=> [X],
		'note_16h'		=> [A],
		'note_16i'		=> [Y],
		'note_16j'		=> [B],
		'note_16k'		=> [LEFT_TRIGGER],
		'note_16l'		=> [RIGHT_TRIGGER],
		'note_16m'		=> [LEFT_STICK_CLICK],
		'note_16n'		=> [RIGHT_STICK_CLICK],
		'note_16o'		=> [START],
		'note_16p'		=> [BACK],
		
		'note_17a'		=> [DPAD_LEFT],
		'note_17b'		=> [DPAD_DOWN],
		'note_17c'		=> [DPAD_UP],
		'note_17d'		=> [DPAD_RIGHT],
		'note_17e'		=> [LEFT_SHOULDER],
		'note_17f'		=> [RIGHT_SHOULDER],
		'note_17g'		=> [X],
		'note_17h'		=> [A],
		'note_17i'		=> [Y],
		'note_17j'		=> [B],
		'note_17k'		=> [LEFT_TRIGGER],
		'note_17l'		=> [RIGHT_TRIGGER],
		'note_17m'		=> [LEFT_STICK_CLICK],
		'note_17n'		=> [RIGHT_STICK_CLICK],
		'note_17o'		=> [START],
		'note_17p'		=> [BACK],
		'note_17q'		=> [GUIDE],
		
		'note_18a'		=> [DPAD_LEFT],
		'note_18b'		=> [DPAD_DOWN],
		'note_18c'		=> [DPAD_UP],
		'note_18d'		=> [DPAD_RIGHT],
		'note_18e'		=> [LEFT_SHOULDER],
		'note_18f'		=> [RIGHT_SHOULDER],
		'note_18g'		=> [X],
		'note_18h'		=> [A],
		'note_18i'		=> [Y],
		'note_18j'		=> [B],
		'note_18k'		=> [LEFT_TRIGGER],
		'note_18l'		=> [RIGHT_TRIGGER],
		'note_18m'		=> [LEFT_STICK_CLICK],
		'note_18n'		=> [RIGHT_STICK_CLICK],
		'note_18o'		=> [START],
		'note_18p'		=> [BACK],
		'note_18q'		=> [GUIDE],
		'note_18r'		=> [LEFT_STICK_DIGITAL_UP],
		
		'note_19a'		=> [DPAD_LEFT],
		'note_19b'		=> [DPAD_DOWN],
		'note_19c'		=> [DPAD_UP],
		'note_19d'		=> [DPAD_RIGHT],
		'note_19e'		=> [LEFT_SHOULDER],
		'note_19f'		=> [RIGHT_SHOULDER],
		'note_19g'		=> [X],
		'note_19h'		=> [A],
		'note_19i'		=> [Y],
		'note_19j'		=> [B],
		'note_19k'		=> [LEFT_TRIGGER],
		'note_19l'		=> [RIGHT_TRIGGER],
		'note_19m'		=> [LEFT_STICK_CLICK],
		'note_19n'		=> [RIGHT_STICK_CLICK],
		'note_19o'		=> [START],
		'note_19p'		=> [BACK],
		'note_19q'		=> [GUIDE],
		'note_19r'		=> [LEFT_STICK_DIGITAL_UP],
		'note_19s'		=> [LEFT_STICK_DIGITAL_DOWN],
		
		'note_20a'		=> [DPAD_LEFT],
		'note_20b'		=> [DPAD_DOWN],
		'note_20c'		=> [DPAD_UP],
		'note_20d'		=> [DPAD_RIGHT],
		'note_20e'		=> [LEFT_SHOULDER],
		'note_20f'		=> [RIGHT_SHOULDER],
		'note_20g'		=> [X],
		'note_20h'		=> [A],
		'note_20i'		=> [Y],
		'note_20j'		=> [B],
		'note_20k'		=> [LEFT_TRIGGER],
		'note_20l'		=> [RIGHT_TRIGGER],
		'note_20m'		=> [LEFT_STICK_CLICK],
		'note_20n'		=> [RIGHT_STICK_CLICK],
		'note_20o'		=> [START],
		'note_20p'		=> [BACK],
		'note_20q'		=> [GUIDE],
		'note_20r'		=> [LEFT_STICK_DIGITAL_UP],
		'note_20s'		=> [LEFT_STICK_DIGITAL_DOWN],
		'note_20t'		=> [LEFT_STICK_DIGITAL_LEFT],
		
		'note_21a'		=> [DPAD_LEFT],
		'note_21b'		=> [DPAD_DOWN],
		'note_21c'		=> [DPAD_UP],
		'note_21d'		=> [DPAD_RIGHT],
		'note_21e'		=> [LEFT_SHOULDER],
		'note_21f'		=> [RIGHT_SHOULDER],
		'note_21g'		=> [X],
		'note_21h'		=> [A],
		'note_21i'		=> [Y],
		'note_21j'		=> [B],
		'note_21k'		=> [LEFT_TRIGGER],
		'note_21l'		=> [RIGHT_TRIGGER],
		'note_21m'		=> [LEFT_STICK_CLICK],
		'note_21n'		=> [RIGHT_STICK_CLICK],
		'note_21o'		=> [START],
		'note_21p'		=> [BACK],
		'note_21q'		=> [GUIDE],
		'note_21r'		=> [LEFT_STICK_DIGITAL_UP],
		'note_21s'		=> [LEFT_STICK_DIGITAL_DOWN],
		'note_21t'		=> [LEFT_STICK_DIGITAL_LEFT],
		'note_21u'		=> [LEFT_STICK_DIGITAL_RIGHT],
		
		'note_22a'		=> [DPAD_LEFT],
		'note_22b'		=> [DPAD_DOWN],
		'note_22c'		=> [DPAD_UP],
		'note_22d'		=> [DPAD_RIGHT],
		'note_22e'		=> [LEFT_SHOULDER],
		'note_22f'		=> [RIGHT_SHOULDER],
		'note_22g'		=> [X],
		'note_22h'		=> [A],
		'note_22i'		=> [Y],
		'note_22j'		=> [B],
		'note_22k'		=> [LEFT_TRIGGER],
		'note_22l'		=> [RIGHT_TRIGGER],
		'note_22m'		=> [LEFT_STICK_CLICK],
		'note_22n'		=> [RIGHT_STICK_CLICK],
		'note_22o'		=> [START],
		'note_22p'		=> [BACK],
		'note_22q'		=> [GUIDE],
		'note_22r'		=> [LEFT_STICK_DIGITAL_UP],
		'note_22s'		=> [LEFT_STICK_DIGITAL_DOWN],
		'note_22t'		=> [LEFT_STICK_DIGITAL_LEFT],
		'note_22u'		=> [LEFT_STICK_DIGITAL_RIGHT],
		'note_22v'		=> [RIGHT_STICK_DIGITAL_UP],
		
		'note_23a'		=> [DPAD_LEFT],
		'note_23b'		=> [DPAD_DOWN],
		'note_23c'		=> [DPAD_UP],
		'note_23d'		=> [DPAD_RIGHT],
		'note_23e'		=> [LEFT_SHOULDER],
		'note_23f'		=> [RIGHT_SHOULDER],
		'note_23g'		=> [X],
		'note_23h'		=> [A],
		'note_23i'		=> [Y],
		'note_23j'		=> [B],
		'note_23k'		=> [LEFT_TRIGGER],
		'note_23l'		=> [RIGHT_TRIGGER],
		'note_23m'		=> [LEFT_STICK_CLICK],
		'note_23n'		=> [RIGHT_STICK_CLICK],
		'note_23o'		=> [START],
		'note_23p'		=> [BACK],
		'note_23q'		=> [GUIDE],
		'note_23r'		=> [LEFT_STICK_DIGITAL_UP],
		'note_23s'		=> [LEFT_STICK_DIGITAL_DOWN],
		'note_23t'		=> [LEFT_STICK_DIGITAL_LEFT],
		'note_23u'		=> [LEFT_STICK_DIGITAL_RIGHT],
		'note_23v'		=> [RIGHT_STICK_DIGITAL_UP],
		'note_23w'		=> [RIGHT_STICK_DIGITAL_DOWN],
		
		'note_24a'		=> [DPAD_LEFT],
		'note_24b'		=> [DPAD_DOWN],
		'note_24c'		=> [DPAD_UP],
		'note_24d'		=> [DPAD_RIGHT],
		'note_24e'		=> [LEFT_SHOULDER],
		'note_24f'		=> [RIGHT_SHOULDER],
		'note_24g'		=> [X],
		'note_24h'		=> [A],
		'note_24i'		=> [Y],
		'note_24j'		=> [B],
		'note_24k'		=> [LEFT_TRIGGER],
		'note_24l'		=> [RIGHT_TRIGGER],
		'note_24m'		=> [LEFT_STICK_CLICK],
		'note_24n'		=> [RIGHT_STICK_CLICK],
		'note_24o'		=> [START],
		'note_24p'		=> [BACK],
		'note_24q'		=> [GUIDE],
		'note_24r'		=> [LEFT_STICK_DIGITAL_UP],
		'note_24s'		=> [LEFT_STICK_DIGITAL_DOWN],
		'note_24t'		=> [LEFT_STICK_DIGITAL_LEFT],
		'note_24u'		=> [LEFT_STICK_DIGITAL_RIGHT],
		'note_24v'		=> [RIGHT_STICK_DIGITAL_UP],
		'note_24w'		=> [RIGHT_STICK_DIGITAL_DOWN],
		'note_24x'		=> [RIGHT_STICK_DIGITAL_LEFT],
		
		'note_25a'		=> [DPAD_LEFT],
		'note_25b'		=> [DPAD_DOWN],
		'note_25c'		=> [DPAD_UP],
		'note_25d'		=> [DPAD_RIGHT],
		'note_25e'		=> [LEFT_SHOULDER],
		'note_25f'		=> [RIGHT_SHOULDER],
		'note_25g'		=> [X],
		'note_25h'		=> [A],
		'note_25i'		=> [Y],
		'note_25j'		=> [B],
		'note_25k'		=> [LEFT_TRIGGER],
		'note_25l'		=> [RIGHT_TRIGGER],
		'note_25m'		=> [LEFT_STICK_CLICK],
		'note_25n'		=> [RIGHT_STICK_CLICK],
		'note_25o'		=> [START],
		'note_25p'		=> [BACK],
		'note_25q'		=> [GUIDE],
		'note_25r'		=> [LEFT_STICK_DIGITAL_UP],
		'note_25s'		=> [LEFT_STICK_DIGITAL_DOWN],
		'note_25t'		=> [LEFT_STICK_DIGITAL_LEFT],
		'note_25u'		=> [LEFT_STICK_DIGITAL_RIGHT],
		'note_25v'		=> [RIGHT_STICK_DIGITAL_UP],
		'note_25w'		=> [RIGHT_STICK_DIGITAL_DOWN],
		'note_25x'		=> [RIGHT_STICK_DIGITAL_LEFT],
		'note_25y'		=> [RIGHT_STICK_DIGITAL_RIGHT],
		
		'note_26a'		=> [DPAD_LEFT],
		'note_26b'		=> [DPAD_DOWN],
		'note_26c'		=> [DPAD_UP],
		'note_26d'		=> [DPAD_RIGHT],
		'note_26e'		=> [LEFT_SHOULDER],
		'note_26f'		=> [RIGHT_SHOULDER],
		'note_26g'		=> [X],
		'note_26h'		=> [A],
		'note_26i'		=> [Y],
		'note_26j'		=> [B],
		'note_26k'		=> [LEFT_TRIGGER],
		'note_26l'		=> [RIGHT_TRIGGER],
		'note_26m'		=> [LEFT_STICK_CLICK],
		'note_26n'		=> [RIGHT_STICK_CLICK],
		'note_26o'		=> [START],
		'note_26p'		=> [BACK],
		'note_26q'		=> [GUIDE],
		'note_26r'		=> [LEFT_STICK_DIGITAL_UP],
		'note_26s'		=> [LEFT_STICK_DIGITAL_DOWN],
		'note_26t'		=> [LEFT_STICK_DIGITAL_LEFT],
		'note_26u'		=> [LEFT_STICK_DIGITAL_RIGHT],
		'note_26v'		=> [RIGHT_STICK_DIGITAL_UP],
		'note_26w'		=> [RIGHT_STICK_DIGITAL_DOWN],
		'note_26x'		=> [RIGHT_STICK_DIGITAL_LEFT],
		'note_26y'		=> [RIGHT_STICK_DIGITAL_RIGHT],
		'note_26z'		=> [NONE],
		
		'ui_up'			=> [DPAD_UP, LEFT_STICK_DIGITAL_UP],
		'ui_left'		=> [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
		'ui_down'		=> [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
		'ui_right'		=> [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
		
		'accept'		=> [A, START],
		'back'			=> [B],
		'pause'			=> [START],
		'reset'			=> [BACK]
	];
	public static var defaultKeys:Map<String, Array<FlxKey>> = null;
	public static var defaultButtons:Map<String, Array<FlxGamepadInputID>> = null;

	public static function resetKeys(controller:Null<Bool> = null) //Null = both, False = Keyboard, True = Controller
	{
		if(controller != true)
			for (key in keyBinds.keys())
				if(defaultKeys.exists(key))
					keyBinds.set(key, defaultKeys.get(key).copy());

		if(controller != false)
			for (button in gamepadBinds.keys())
				if(defaultButtons.exists(button))
					gamepadBinds.set(button, defaultButtons.get(button).copy());
	}

	public static function clearInvalidKeys(key:String)
	{
		var keyBind:Array<FlxKey> = keyBinds.get(key);
		var gamepadBind:Array<FlxGamepadInputID> = gamepadBinds.get(key);
		while(keyBind != null && keyBind.contains(NONE)) keyBind.remove(NONE);
		while(gamepadBind != null && gamepadBind.contains(NONE)) gamepadBind.remove(NONE);
	}

	public static function loadDefaultKeys()
	{
		defaultKeys = keyBinds.copy();
		defaultButtons = gamepadBinds.copy();
	}

	public static function saveSettings() {
		for (key in Reflect.fields(data))
			Reflect.setField(FlxG.save.data, key, Reflect.field(data, key));

		#if ACHIEVEMENTS_ALLOWED Achievements.save(); #end
		FlxG.save.flush();

		//Placing this in a separate save so that it can be manually deleted without removing your Score and stuff
		var save:FlxSave = new FlxSave();
		save.bind('controls_v3', CoolUtil.getSavePath());
		save.data.keyboard = keyBinds;
		save.data.gamepad = gamepadBinds;
		save.flush();
		FlxG.log.add("Settings saved!");
	}

	public static function loadPrefs() {
		#if ACHIEVEMENTS_ALLOWED Achievements.load(); #end

		for (key in Reflect.fields(data))
			if (key != 'gameplaySettings' && Reflect.hasField(FlxG.save.data, key))
				Reflect.setField(data, key, Reflect.field(FlxG.save.data, key));
		
		if(Main.fpsVar != null)
			Main.fpsVar.visible = data.showFPS;

		#if (!html5 && !switch)
		FlxG.autoPause = ClientPrefs.data.autoPause;

		if(FlxG.save.data.framerate == null) {
			final refreshRate:Int = FlxG.stage.application.window.displayMode.refreshRate;
			data.framerate = Std.int(FlxMath.bound(refreshRate, 60, 240));
		}
		#end

		if(data.framerate > FlxG.drawFramerate)
		{
			FlxG.updateFramerate = data.framerate;
			FlxG.drawFramerate = data.framerate;
		}
		else
		{
			FlxG.drawFramerate = data.framerate;
			FlxG.updateFramerate = data.framerate;
		}

		if(FlxG.save.data.gameplaySettings != null)
		{
			var savedMap:Map<String, Dynamic> = FlxG.save.data.gameplaySettings;
			for (name => value in savedMap)
				data.gameplaySettings.set(name, value);
		}
		
		// flixel automatically saves your volume!
		if(FlxG.save.data.volume != null)
			FlxG.sound.volume = FlxG.save.data.volume;
		if (FlxG.save.data.mute != null)
			FlxG.sound.muted = FlxG.save.data.mute;

		#if DISCORD_ALLOWED DiscordClient.check(); #end

		// controls on a separate save file
		var save:FlxSave = new FlxSave();
		save.bind('controls_v3', CoolUtil.getSavePath());
		if(save != null)
		{
			if(save.data.keyboard != null)
			{
				var loadedControls:Map<String, Array<FlxKey>> = save.data.keyboard;
				for (control => keys in loadedControls)
					if(keyBinds.exists(control)) keyBinds.set(control, keys);
			}
			if(save.data.gamepad != null)
			{
				var loadedControls:Map<String, Array<FlxGamepadInputID>> = save.data.gamepad;
				for (control => keys in loadedControls)
					if(gamepadBinds.exists(control)) gamepadBinds.set(control, keys);
			}
			reloadVolumeKeys();
		}
	}

	inline public static function getGameplaySetting(name:String, defaultValue:Dynamic = null, ?customDefaultValue:Bool = false):Dynamic
	{
		if(!customDefaultValue) defaultValue = defaultData.gameplaySettings.get(name);
		return /*PlayState.isStoryMode ? defaultValue : */ (data.gameplaySettings.exists(name) ? data.gameplaySettings.get(name) : defaultValue);
	}

	public static function reloadVolumeKeys()
	{
		TitleState.muteKeys = keyBinds.get('volume_mute').copy();
		TitleState.volumeDownKeys = keyBinds.get('volume_down').copy();
		TitleState.volumeUpKeys = keyBinds.get('volume_up').copy();
		toggleVolumeKeys(true);
	}
	public static function toggleVolumeKeys(?turnOn:Bool = true)
	{
		final emptyArray = [];
		FlxG.sound.muteKeys = turnOn ? TitleState.muteKeys : emptyArray;
		FlxG.sound.volumeDownKeys = turnOn ? TitleState.volumeDownKeys : emptyArray;
		FlxG.sound.volumeUpKeys = turnOn ? TitleState.volumeUpKeys : emptyArray;
	}
}
