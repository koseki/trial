@echo;
@echo テキストファイルの改行コードを LF に統一します。
@echo;
@echo 実行前にコミットされていない変更がないことを確認してください。
@echo コミットされていない変更は消えます。
@echo;
@echo また、VM が停止していることを確認してください。
@echo 起動している場合は stop.bat で停止してください。
@echo VM で使用中のファイルがあった場合、ロックにより変換に失敗します。
@echo;
pause

set PATH=C:\Program Files\Git\bin;C:\Program Files (x86)\Git\bin;%PATH%
git config core.eol lf
git config core.autocrlf input

cd /d %~dp0\..\..\..
git rm --cached -r .
git reset --hard

git config --list
pause
