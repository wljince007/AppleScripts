(*
Library Tests
v1.0
Dov Frankel, 2013
*)

--set scriptString to "display dialog \"Hello, World!\""
--set scriptObject to run script scriptString
--set scriptObject to run script ("script s" & return & scriptString & return & "end script " & return & "return s")


property LibLoader : load script file ((path to scripts folder from user domain as text) & "Libraries:LibraryLoader.scpt")
property TransmissionLib : LibLoader's loadScript("Libraries:Transmission.applescript")
--tell LibLoader
--	set TransmissionLib to loadScript("Libraries:Transmission.applescript")
--end tell

set defpath to (path to scripts folder from user domain as text) & "Libraries:LibraryLoader.scpt"
log "defpath lw :" & defpath

tell TransmissionLib to logit("hello from applescript")



-- ///////////////////////////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



