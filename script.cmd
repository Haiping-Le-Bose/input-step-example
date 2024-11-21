@echo off
:loop
:: 检查 FLATBUILD_NAME 是否为空
for /f "delims=" %%i in ('buildkite-agent meta-data get flatbuild_name 2^>nul') do set FLATBUILD_NAME=%%i

:: 如果 FLATBUILD_NAME 为空，继续循环
if not defined FLATBUILD_NAME (
    echo Script is checking for name
    timeout /t 5 >nul
    goto loop
)

:: 如果 FLATBUILD_NAME 已经有值，输出并退出
echo FLATBUILD_NAME is %FLATBUILD_NAME%
