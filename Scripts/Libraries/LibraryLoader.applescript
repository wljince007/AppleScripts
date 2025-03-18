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
	
	set scriptFileToLoad to my fileAliasInScriptsFolder(scriptRelativePath) as text -- to be safe 
	try
		set scriptObject to load script alias scriptFileToLoad
	on error number -1752 -- text format script 
		set scriptText to ""
		try
			-- Try reading as Mac encoding first
			set scriptText to read alias scriptFileToLoad as text
		on error number -1700 -- Error reading script's encoding
			-- Finally try UTF-8
			set scriptText to read alias scriptFileToLoad as class utf8
		end try
		
		try
			set scriptObject to run script ("script s" & return & scriptText & return & "end script " & return & "return s")
		on error e number n partial result p from f to t
			display dialog "Error reading library" & scriptFileToLoad & "" & e & "Please encode as Mac or UTF-8"
			error e number n partial result p from f to t
		end try
	end try
	
	return scriptObject
end loadScript

-- Runs any script (and and returns its output) with a path relative to ~/Library/Scripts
(*
LibLoader's runScript("Folder Name:Script Name.applescript")
*)
on runScript(scriptRelativePath)
	set theScriptPath to my fileAliasInScriptsFolder(scriptRelativePath)
	set theResult to run script theScriptPath
	log theResult
	return theResult
end runScript


(* Intended for Private use *)

on fileAliasInScriptsFolder(scriptRelativePath)
	return ((path to scripts folder from user domain as text) & scriptRelativePath) as alias
end fileAliasInScriptsFolder


(* Test Calls *)

--property StringsLib : loadScript("Libraries:Strings utf16.applescript")
--my runScript("Test Return String.applescript")