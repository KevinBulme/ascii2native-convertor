# ascii2native-convertor
A small batch script to loop the java tool ascii2native on a folder and it's subfolders

## How to use
* Set the target directory (i.e. the directory where the convertion is to be done)
```batch
targetDir="<C:\Users\..."
```
* If your JAVA_HOME is not properly define (or if you wanna use a different version of Java)
```batch
jdkPath=%JAVA_HOME%
```
* Set your file mask
```batch
for /r %targetDir% %%a in (<file_mask>) do (
```
