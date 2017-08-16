::for /d %%X in (*) do "..\7-Zip\7z.exe" a "%%X.wotmod" ".\%%X\*" -mx=0 -mmt -ssw -tzip -y



::for %%F in (*.zip) do ( "..\7-Zip\7z.exe" x -y -o"%%F_tmp" "%%F" * & pushd %%F_tmp & "..\7-Zip\7z.exe" a -mx=0 -mmt -ssw -tzip -y ..\"%%~nF".wotmod * & popd & rmdir /s /q "%%F_tmp" )

for %%F in (*.zip) do ( "C:\Program Files\7-Zip\7z.exe" x -y -o"%%F_tmp" "%%F" * & pushd %%F_tmp & "C:\Program Files\7-Zip\7z.exe" a -y -r -mx=0 -mmt -ssw -tzip ..\"%%~nF".wotmod * & popd & rmdir /s /q "%%F_tmp" )

