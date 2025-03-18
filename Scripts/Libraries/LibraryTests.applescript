(*
Library Tests
v1.0
Dov Frankel, 2013
*)

property LibLoader : load script file ((path to scripts folder from user domain as text) & "Libraries:LibraryLoader.scpt")
property TransmissionLib : LibLoader's loadScript("Libraries:Transmission.applescript")
set defpath to (path to scripts folder from user domain as text) & "Libraries:LibraryLoader.scpt"
log "defpath lw :" & defpath


-- ///////////////////////////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



