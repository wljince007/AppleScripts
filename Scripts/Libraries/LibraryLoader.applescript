(*
Library Loader
v1.1
Dov Frankel, 2013

loadScript() handler adapted from code at http://codemunki.com


*** Instructions ***

Copy the compiled version (.scpt) into your ~/Library/Scripts directory, and then include it in your scripts like so:

property LibLoader : load script file ((path to scripts folder from user domain as text) & "LibraryLoader.scpt")

You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:

property LibName : LibLoader's loadScript("Folder Name:Some Cool Script.applescript")
*)

-- Loads any script to use as a script property, with a path relative to ~/Library/Scripts
(*
property LibName : LibLoader's loadScript("Folder Name:Some Cool Script.applescript")
*)

on loadScript(scriptRelativePath)
	my logit("\n\n")
	my logit("loadScript | begin")
	my logit("loadScript | scriptRelativePath:" & scriptRelativePath)
	-- set scriptFileToLoad to my fileAliasInScriptsFolder(scriptRelativePath) as text -- to be safe
	set scriptFileToLoad to my fileAliasInScriptsFolder(scriptRelativePath)
	-- set scriptFileToLoad to ((path to scripts folder from user domain as text) & scriptRelativePath)
	my logit("loadScript | scriptFileToLoad:" & scriptFileToLoad)
	try
		set scriptObject to load script file scriptFileToLoad
		my logit("loadScript | scriptObject:" & scriptObject)
	on error number -1752 -- text format script 
		set scriptText to ""
		try
			-- Try reading as Mac encoding first
			set scriptText to read file scriptFileToLoad as text
			my logit("loadScript | scriptText:" & scriptText)
		on error number -1700 -- Error reading script's encoding
			-- Finally try UTF-8
			set scriptText to read file scriptFileToLoad as class utf8
		end try
		
		try
			my logit("loadScript | scriptObject:" & ("script\n" & scriptText & "\nend script"))
			set scriptObject to run script ("script\n" & scriptText & "\nend script")
			--set scriptObject to run script scriptText

		on error e number n partial result p from f to t
			my logit("loadScript | on error:" & "Error reading library" & scriptFileToLoad & "" & e & "Please encode as Mac or UTF-8")
			display dialog "Error reading library" & scriptFileToLoad & "" & e & "Please encode as Mac or UTF-8"
			error e number n partial result p from f to t
		end try
		my logit("loadScript | end")
	end try
	
	return scriptObject
end loadScript

-- Runs any script (and and returns its output) with a path relative to ~/Library/Scripts
(*
LibLoader's runScript("Folder Name:Script Name.applescript")
*)
on runScript(scriptRelativePath)
	set theScriptPath to my fileAliasInScriptsFolder(scriptRelativePath)
	my logit("runScript | theScriptPath:" & theScriptPath)
	set theResult to run script theScriptPath
	my logit("runScript | theResult:" & theResult)
	return theResult
end runScript


(* Intended for Private use *)

on fileAliasInScriptsFolder(scriptRelativePath)
	my logit("fileAliasInScriptsFolder | scriptRelativePath:" & scriptRelativePath)
	set fullPath to ((path to scripts folder from user domain as text) & scriptRelativePath)
	my logit("fileAliasInScriptsFolder | fullPath:" & fullPath)
	return ((path to scripts folder from user domain as text) & scriptRelativePath)
end fileAliasInScriptsFolder


(* Test Calls *)

--property StringsLib : loadScript("Libraries:Strings utf16.applescript")
--my runScript("Test Return String.applescript")


on logit(log_string)
	my logit_withfile(log_string, "applescript_debug.log")	
end logit

-- 日志清空
on logit_clean()
	my logit_clean_withfile("applescript_debug.log")
end logit_clean

on logit_withfile(log_string, log_file)
	log log_string
	do shell script "echo `date '+%Y-%m-%d %T: '`\"" & log_string & "\" >> $HOME/Library/Logs/" & log_file
end logit

-- 日志清空
on logit_clean_withfile(log_file)
	do shell script "echo > $HOME/Library/Logs/" & log_file
end logit_clean