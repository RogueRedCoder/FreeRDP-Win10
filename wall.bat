@echo off
powershell -Command "Invoke-WebRequest https://gitlab.com/chamod12/changewallpaper-win10/-/raw/main/TranscodedWallpaper -OutFile TranscodedWallpaper"
powershell -Command "Invoke-WebRequest https://aloneboreddeveloper.github.io/site/wp-content/uploads/2025/02/0547b64597cb21f35386e205556af466-1.jpg -OutFile 0547b64597cb21f35386e205556af466-1.jpg"

set "TranscodedWallpaper=TranscodedWallpaper"
set "0547b64597cb21f35386e205556af466-1.jpg"

set "destinationDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes"
set "cachedFileDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

copy /y "%TranscodedWallpaper%" "%destinationDir%\TranscodedWallpaper"
copy /y "%CachedImage%" "%cachedFileDir%\0547b64597cb21f35386e205556af466-1.jpg"

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
