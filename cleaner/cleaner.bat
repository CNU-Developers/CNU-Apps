rem made by taeguk
rem version : 0.0.1

echo [*] Remove 바탕화면
del /s /q "C:\Users\R912\Desktop\*.*"
del /s /q "C:\Users\R912\Desktop\*.lnk"
for /d %%a in ("C:\Users\R912\Desktop\*.*") do (
 rmdir "%%a" /s /q
)
mklink "C:\Users\R912\Desktop\시험잘보세요.lnk" "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe"

echo [*] Remove Downloads folder.
del /s /q "C:\Users\R912\Downloads\*.*"

echo [*] Remove 카카오톡받은파일 folder.
del /s /q "C:\Users\R912\Documents\카카오톡 받은 파일\*.*"

echo [*] Remove codes and Visual folders.
del /s /q "C:\Users\R912\Documents\*.c" "C:\Users\R912\Documents\*.cpp"
del /q "C:\Users\R912\Documents\Visual*"
for /d %%a in ("C:\Users\R912\Documents\Visual*") do (
 del /s /q "%%a\*.c"
 del /s /q "%%a\*.cpp"
 for /d %%p in ("%%a\Projects\*.*") do (
  rmdir "%%p" /s /q
 )
)

echo [*] Empty recycle.bin
rd /q /s %systemdrive%\$Recycle.bin