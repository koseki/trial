@echo;
@echo �e�L�X�g�t�@�C���̉��s�R�[�h�� LF �ɓ��ꂵ�܂��B
@echo;
@echo ���s�O�ɃR�~�b�g����Ă��Ȃ��ύX���Ȃ����Ƃ��m�F���Ă��������B
@echo �R�~�b�g����Ă��Ȃ��ύX�͏����܂��B
@echo;
@echo �܂��AVM ����~���Ă��邱�Ƃ��m�F���Ă��������B
@echo �N�����Ă���ꍇ�� stop.bat �Œ�~���Ă��������B
@echo VM �Ŏg�p���̃t�@�C�����������ꍇ�A���b�N�ɂ��ϊ��Ɏ��s���܂��B
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
