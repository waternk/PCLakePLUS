set compilerpath=%~1
path %compilerpath%\bin;%path%
@echo off set p="D:\Users\AnnetteJ\Documents\6_Writings\2_Papers\4_Paper2_LakeComparison\Model\3.00\Models\PCLake\6.13.16\"

cd ..\..\..\frameworks\osiris\3.01
"%compilerpath%\bin\g++" -w -c -Iinclude pclake\pclake.cpp pcmodel\pcmodel.cpp pclake\pl61316c.cpp pclake\pl61316cd.cpp pclake\pl61316ci.cpp pclake\pl61316cc.cpp pclake\pl61316db.cpp
"%compilerpath%\bin\g++" -static -w -o bin\pclake.exe pclake.o pcmodel.o pl61316c.o pl61316cd.o pl61316ci.o pl61316cc.o pl61316db.o lib\osiris.a
del *.o
pause