echo off
if "%1"=="" goto usage
if "%2"=="" goto usage
if "%3"=="" goto usage

REM set the classpath to include the POI files (to read Excel files)
rem set CLASSPATH=.;C:\GP\jakarta-poi-1.5.1-final-bin\build\jakarta-poi-1.5.1-final-20020615.jar

set CLASSPATH=.;C:\GP\poi-3.16\poi-3.16.jar;C:\GP\poi-3.16\poi-ooxml-3.16.jar;
set CLASSPATH=%CLASSPATH%;C:\apps\poi-3.16\ooxml-lib\xmlbeans-2.6.0.jar;C:\apps\poi-3.16\lib\commons-collections4-4.1.jar;C:\apps\poi-3.16\poi-ooxml-schemas-3.16.jar

rem set CLASSPATH=.;C:\GP\poi-3.15\poi-3.15.jar;C:\GP\poi-3.15\poi-ooxml-3.15.jar;C:\GP\poi-3.15\poi-ooxml-schemas-3.15.jar;C:\GP\poi-3.15\ooxml-lib\xmlbeans-2.6.0.jar;C:\GP\poi-3.15\ooxml-lib\curvesapi-1.04.jar;C:\GP\poi-3.15\lib\commons-collections4-4.1.jar

set JAVA_HOME=C:\GP\jre7\bin
rem set JAVA_HOME=c:\apps\jdk1.7.0_45\bin
rem set JAVA_HOME=C:\GP\j2sdk1.4.0_02\bin
set RUN_DATE=%2%1
set FILE_NAME=%3
set FO_FILE=C:\GP\run\%RUN_DATE%\fo\%FILE_NAME%.fo
set STEP_2=C:\GP\run\%RUN_DATE%\step2.xml

rem goto create_fo
rem goto fo

rem 1 - run day and month (MMDD)
rem 2 - run year (YYYY)
rem 3 - Excel File name (no extension)

REM Convert Excel to XML
rem echo %JAVA_HOME%\java -Xms128M -Xmx196M ExcelToXML_3 C:\GP\bin\wk.properties "C:\GP\run\%RUN_DATE%\%3.xlsx" "C:\GP\run\%RUN_DATE%\%3.xml"
rem java -Xms128M -Xmx196M ExcelToXML_3 C:\GP\bin\wk.properties "C:\GP\run\%RUN_DATE%\%3.xls" "C:\GP\run\%RUN_DATE%\%3.xml"

rem echo -Xms128M -Xmx196M ExcelToXML_WK C:\GP\bin\wk.properties "C:\GP\run\%RUN_DATE%\%3.xls" "C:\GP\run\%RUN_DATE%\%3.xml" %4
rem java -Xms128M -Xmx196M ExcelToXML_WK C:\GP\bin\wk.properties "C:\GP\run\%RUN_DATE%\%3.xls" "C:\GP\run\%RUN_DATE%\%3.xml" %4

echo %JAVA_HOME%\java -Xms128M -Xmx196M ApachePOIExcelRead C:\GP\bin\wk.properties "C:\GP\run\%RUN_DATE%\%3.xlsx" "C:\GP\run\%RUN_DATE%\%3.xml" %4
%JAVA_HOME%\java -Xms128M -Xmx196M ApachePOIExcelRead C:\GP\bin\wk.properties "C:\GP\run\%RUN_DATE%\%3.xlsx" "C:\GP\run\%RUN_DATE%\%3.xml" %4


echo.
echo Step 2
rem Step 2
echo %JAVA_HOME%\java -Xms128M -Xmx128M transformXSLT C:\GP\run\%RUN_DATE%\%3.xml C:\GP\xsl\step2.xsl %STEP_2% %1 %2
%JAVA_HOME%\java -Xms128M -Xmx128M transformXSLT C:\GP\run\%RUN_DATE%\%3.xml C:\GP\xsl\step2.xsl %STEP_2% %1 %2

rem goto end

echo.

:create_fo

REM convert XML to FO (using XSLT)
rem %JAVA_HOME%\java -Xms128M -Xmx128M transformXSLT C:\GP\run\20170420\test.xml C:\GP\run\test\test.xsl %FO_FILE% %4
rem %JAVA_HOME%\java -Xms128M -Xmx128M transformXSLT C:\GP\run\%RUN_DATE%\%3.xml C:\GP\xsl\wk.xsl %FO_FILE% %4
rem %JAVA_HOME%\java -Xms128M -Xmx128M transformXSLT C:\GP\run\%RUN_DATE%\%3.xml C:\GP\run\test\test.xsl %FO_FILE% 

echo %JAVA_HOME%\java -Xms128M -Xmx128M transformXSLT C:\GP\run\%RUN_DATE%\%3.xml C:\GP\xsl\wk.xsl %FO_FILE% %1 %2
%JAVA_HOME%\java -Xms128M -Xmx128M transformXSLT C:\GP\run\%RUN_DATE%\step2.xml C:\GP\xsl\wk.xsl %FO_FILE% %1 %2



:fo
REM Generate the PDF file
cd C:\GP\XEP
call xep -fo %FO_FILE% C:\GP\run\%RUN_DATE%\output\%3.pdf
rem call xep -fo C:\GP\run\20170420\fo\test.fo C:\GP\run\%RUN_DATE%\output\%3.pdf

REM Back to the bin directory
cd C:\GP\bin



echo off
goto end


:usage
echo.
echo USAGE:
echo.
echo gen MMDD YYYY "Excel File" 
echo.
echo where RunDate is the run date, in YYYYMMDD format
echo and "Excel File" is the run's Excel file.
echo NOTE: put the Excel file name in quotes, and do NOT include the XLS extension
echo.
echo Example:
echo gen 0208 2004 "2.1 versioned tags" 
echo.
echo off

goto end

:filename
echo.
echo Do NOT include a space in the Excel file name
echo.
echo off

goto end

:end
