@echo off
set filename_with_ext=%1
set filename=%filename_with_ext:.cpp=%
set file_cpp=%filename%.cpp
set file_exe=%filename%.exe 

if exist %file_exe% del %file_exe%
g++ %file_cpp% -o %file_exe%

if exist %file_exe%(
    %file_exe%
) else (
    echo compile error.
)

