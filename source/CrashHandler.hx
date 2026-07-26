package states;

import flixel.FlxG;
import haxe.CallStack;
import haxe.io.Path;
import openfl.Lib;
import openfl.errors.Error;
import openfl.events.ErrorEvent;
import openfl.events.UncaughtErrorEvent;
#if sys
import sys.FileSystem;
import sys.io.File;
#end

class CrashHandler
{
	public static var errorMessage:String = "";
	public static var specificCrashReason:String = "";

	static final funnyMessages:Array<String> = [
		"Oopsie daisies!! You did a fucky wucky!!",
		"Engine skipped a heartbeat.",
		"Did you delete coconut.png?",
		"Have you heard of missing json's cousin null function reference?",
		"First time, huh?"
	];

	static final commonCrashers:Map<String, String> = [
		'ChartLoader.load063()' => 'Well you tried loading an 0.6.3 chart and IT CRASHED',
		'PlayState.validateKeys()' => 'well you went above a key and it crashed ONLY 1-9 KEYS DUMMY',
		'SuperSecretDebugMenu.crashDaEngine()' => 'Oh hey you found an secret crash log! STOP REPORTINGN THE SAME BUGS I HATE THIS',
		'StateLoader.loadState()' => 'Oh well you tried loading up a state and it crashed.. wait for a patch fix',
		'Note.loadSplash()' => 'Your note splash skin decided to explode. Nice one.',
		'Character.loadJson()' => 'The character json is completely cooked. Check your brackets!',
		'DialogueBox.startDialogue()' => 'Dialogue text file threw a tantrum and died.',
		'StageData.loadDirectory()' => 'Stage folder is missing or you spelled the name wrong, genius.',
		'Conductor.changeBPM()' => 'BPM tried to go below zero and broke the spacetime continuum.',
		'Highscore.save()' => 'Failed to save your highscore. Your hard drive is probably judging you.',
		'VideoCutscene.play()' => 'The cutscene format is unsupported or the video file ghosted you.',
		'ModchartManager.executeScript()' => 'Your Lua or HScript script committed self-destruct.',
		'HealthIcon.update()' => 'Icon animation frame out of bounds. Where did the sprites go?!'
	];

	public static function init():Void
	{
		Lib.current.loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, onUncaughtError);
		#if cpp
		untyped __global__.__hxcpp_set_critical_error_handler(onError);
		#end
	}

	private static function onUncaughtError(e:UncaughtErrorEvent):Void
	{
		e.preventDefault();
		e.stopPropagation();

		var m:String = Std.string(e.error);
		if (Std.isOfType(e.error, Error))
		{
			var err = cast(e.error, Error);
			m = err.message;
		}
		else if (Std.isOfType(e.error, ErrorEvent))
		{
			var err = cast(e.error, ErrorEvent);
			m = err.text;
		}

		final stack = CallStack.exceptionStack();
		var stackLabelArr:Array<String> = [];

		for (stackItem in stack)
		{
			switch (stackItem)
			{
				case CFunction:
					stackLabelArr.push("Non-Haxe (C) Function");
				case Module(c):
					stackLabelArr.push('Module $c');
				case FilePos(parent, file, line, col):
					switch (parent)
					{
						case Method(cla, func): stackLabelArr.push('${file.replace(".hx", "")}.$func() [line $line]');
						case _: stackLabelArr.push('${file.replace(".hx", "")} [line $line]');
					}
				case LocalFunction(v):
					stackLabelArr.push('Local Function $v');
				case Method(cl, m):
					stackLabelArr.push('$cl - $m');
				case _:
					stackLabelArr.push('$stackItem');
			}
		}

		var stackLabel = stackLabelArr.join("\n");

		specificCrashReason = "";
		for (source => reason in commonCrashers)
		{
			if (stackLabel.contains(source))
			{
				specificCrashReason = reason;
				break;
			}
		}

		var displayMessage = specificCrashReason;
		if (displayMessage == "")
		{
			displayMessage = funnyMessages[FlxG.random.int(0, funnyMessages.length - 1)];
		}

		errorMessage = '$displayMessage\n\nError: $m\n\n$stackLabel';

		#if sys
		try
		{
			if (!FileSystem.exists("crash/"))
				FileSystem.createDirectory("crash/");
			
			var dateNow = Date.now().toString().replace(" ", "_").replace(":", "'");
			var path = "crash/Error_" + dateNow + ".log";
			File.saveContent(path, errorMessage);
			Sys.println("Crash dump saved in " + Path.normalize(path));
		}
		catch (ex:Dynamic)
		{
			trace('Couldn\'t save error message: $ex');
		}
		#end

		Sys.println(errorMessage);

		// Switch directly to your ErrorState and send them back to MainMenuState when pressing keys
		FlxG.switchState(new states.ErrorState(errorMessage, function() {
			FlxG.switchState(new states.MainMenuState());
		}, function() {
			FlxG.switchState(new states.MainMenuState());
		}));
	}

	private static function onError(message:Dynamic):Void
	{
		throw Std.string(message);
	}
}
