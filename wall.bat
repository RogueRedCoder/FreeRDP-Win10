@echo off

REM Downloading the image file
powershell -Command "Invoke-WebRequest https://aloneboreddeveloper.github.io/site/wp-content/uploads/2025/02/0547b64597cb21f35386e205556af466-1.jpg -OutFile 0547b64597cb21f35386e205556af466-1.jpg"

REM Setting variables
set "TranscodedWallpaper=0547b64597cb21f35386e205556af466-1.jpg"
set "destinationDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes"
set "cachedFileDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

REM Copying the wallpaper to the themes directory
copy /y "%TranscodedWallpaper%" "%destinationDir%\TranscodedWallpaper"

REM Copying the image to the cached files directory
copy /y "%TranscodedWallpaper%" "%cachedFileDir%\0547b64597cb21f35386e205556af466-1.jpg"

REM Updating the user system parameters to apply the new wallpaper
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
