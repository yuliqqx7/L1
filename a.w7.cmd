@echo off

set rootaaa=%~dp0
set roota=%rootaaa:~0,1%
set rootb=e
set rootbb=%rootb%:\
set rootbbb=%rootb%:\a
set PATH=%rootbbb%;/bin;%rootbbb%\bin;%SystemRoot%\System32

cd %roota%:\
mkdir "%rootbbb%"
mkdir "%rootbbb%\bin"
mkdir "%rootbbb%\raw"
mkdir "%rootbbb%\external"
mkdir "%rootbbb%\external\code"
mkdir "%rootbbb%\external\app"
mkdir "%rootbbb%\external\app\cygwin64"
mkdir "%rootbbb%\technology\computer\software"
mkdir "%rootbbb%\technology\computer\software\setup"
mkdir "%rootbbb%\home\%USERNAME%"

copy .tmux.conf %rootbbb%\home\%username%\.tmux.conf
copy .minttyrc %rootbbb%\home\%username%\.minttyrc
copy .bashrc %rootbbb%\home\%username%\.bashrc

set b=%rootbbb%

cd %roota%:\raw

set a=%roota%:\raw\setup-cygwin-x86-2.874-peff32
set b=https://download.nus.edu.sg/mirror/cygwin/
set c=git,tmux,dos2unix,nano,file,links,w3m,lynx,irssi,ssh,binutils,curl,nasm,vim,ctags,cflow,cproto,unifdef,nc6,unzip,wget

:goto L1
%a% --only-site -q --no-verify --root "%rootbbb%" --local-package-dir "%rootbbb%\external\app\cygwin64" --no-desktop --site %b% -P %c%

:L1
start %rootbbb%\bin\mintty.exe -wfull -e /bin/tmux.exe
type %roota%:\step2.txt > %rootbbb%\step2.txt
start %rootbbb%\bin\bash.exe /step2.txt
:END
