rm -f LibraryLoader.scpt
# osacompile -o LibraryLoader.scpt -l JavaScript LibraryLoader.applescript
osacompile -o LibraryLoader.scpt -l AppleScript LibraryLoader.applescript
# rm -f  /Volumes/RamDisk/LibraryLoader.scpt
cp -f LibraryLoader.scpt /Volumes/RamDisk/
cp -f LibraryLoader.scpt ~/Library/Scripts/
cp -f LibraryLoader.scpt ~/Library/Scripts/Libraries/


osacompile -o Transmission.scpt -l AppleScript Transmission.applescript
