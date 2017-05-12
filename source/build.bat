echo off
set JAVA_HOME=c:\apps\jdk1.7.0_45\bin

rem set CLASSPATH=.;C:\version_tags\jakarta-poi-1.5.1-final-bin\build\jakarta-poi-1.5.1-final-20020615.jar
rem set CLASSPATH=%CLASSPATH%;C:\version_tags\poi-3.16\poi-3.16.jar;C:\version_tags\poi-3.16\poi-ooxml-3.16.jar;

set CLASSPATH=.;C:\version_tags\poi-3.16\poi-3.16.jar;C:\version_tags\poi-3.16\poi-ooxml-3.16.jar;

rem set CLASSPATH=C:\apache\poi-3.0.1-FINAL\poi-3.0.1-FINAL-20070705.jar
rem set CLASSPATH=.;C:\version_tags\poi-3.15\poi-ooxml-3.15.jar;C:\version_tags\poi-3.15\poi-3.15.jar
rem set CLASSPATH=.;C:\version_tags\poi-3.15\poi-3.15.jar;C:\version_tags\poi-3.15\poi-ooxml-3.15.jar;C:\version_tags\poi-3.15\poi-ooxml-schemas-3.15.jar;C:\version_tags\poi-3.15\ooxml-lib\xmlbeans-2.6.0.jar;C:\version_tags\poi-3.15\ooxml-lib\curvesapi-1.04.jar;C:\version_tags\poi-3.15\lib\commons-collections4-4.1.jar
	
	
rem javac Readsheet.java
rem javac -d ..\bin ExcelToXML_WK.java

echo on
 %JAVA_HOME%\javac -d ..\bin ApachePOIExcelRead.java
rem %JAVA_HOME%\javac -d ..\bin transformXSLT.java



