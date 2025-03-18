(*
Filenames Library
v1.0
Dov Frankel, 2013


property LibLoader : load script file ((path to scripts folder from user domain as text) & "Libraries:LibraryLoader.scpt")
property FilenamesLib : LibLoader's loadScript("Libraries:Filenames.applescript")
*)

-- Returns the extension of a file (of a URL or POSIX path)
on GetExtension(FilePath)
	try
		
		set oldDelims to AppleScript's text item delimiters -- save their current state
		set AppleScript's text item delimiters to {"."}
		
		set theExtension to last text item of FilePath
		return theExtension
		
	on error errMessage
		set AppleScript's text item delimiters to oldDelims -- restore them if something went wrong
		log "Filenames:GetExtension(FilePath) failed: " & errMessage
	end try
	
end GetExtension

-- Returns the name of a file (of a URL or POSIX path)
on GetFileName(FilePath)
	try
		
		set oldDelims to AppleScript's text item delimiters -- save their current state
		set AppleScript's text item delimiters to {"/"}
		
		set theFileName to last text item of FilePath
		return theFileName
		
	on error errMessage
		set AppleScript's text item delimiters to oldDelims -- restore them if something went wrong
		log "Filenames:GetFileName(FilePath) failed: " & errMessage
	end try
	
end GetFileName