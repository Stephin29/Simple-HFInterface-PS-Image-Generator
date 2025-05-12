@echo off
:newstart
cls
Echo Please wait while we initiate the program...
if exist %APPDATA%\ImageGenerator\212344588A.aop goto readAPI
goto LocalAPIKey

:readAPI
Echo Reading API Keys Stored Locally...
for /f "usebackq delims=" %%A in ("%APPDATA%\ImageGenerator\212344588A.aop") do (
    set "APIKey=%%A"
    goto StartService
)

:StartService
cls
echo Welcome to Images Generator v3.1A!
echo Please select your desired generator/option:
echo 1. Stable Diffusion xl base 1.0
echo 2. Stable Diffusion 3.5 large
echo 3. Stable Diffusion 3.5 large turbo
echo 4. Update API Key

CHOICE /C 1234 /M "Please select an option: "
IF %ERRORLEVEL%==1 GOTO xlbase
IF %ERRORLEVEL%==2 GOTO 35large
IF %ERRORLEVEL%==3 GOTO 35largeturbo
IF %ERRORLEVEL%==4 GOTO UpdateAPIKey


:xlbase
cls
if not exist "%USERPROFILE%\Desktop\GeneratedContent" (mkdir "%USERPROFILE%\Desktop\GeneratedContent")
set /p user_prompt=Enter your prompt:
set user_prompt=%user_prompt:"=\"% 
echo Selected Generator: Stable Diffusion xl base 1.0
echo Sending request...
curl -X POST "https://api-inference.huggingface.co/models/stabilityai/stable-diffusion-xl-base-1.0" ^
-H "Authorization: Bearer %APIKey%" ^
-H "Content-Type: application/json" ^
-d "{\"inputs\": \"%user_prompt%\", \"options\": {\"wait_for_model\": true}}" ^
-o %USERPROFILE%\Desktop\GeneratedContent\sdxlbase1.0_%RANDOM%.png
Echo Image Generated! Check the folder named GeneratedContent on your desktop
pause
goto newstart

:35large
cls
if not exist "%USERPROFILE%\Desktop\GeneratedContent" (mkdir "%USERPROFILE%\Desktop\GeneratedContent")
set /p user_prompt=Enter your prompt: 
set user_prompt=%user_prompt:"=\"%
echo Selected Generator: Stable Diffusion 3.5 large
echo Sending request...
curl -X POST "https://api-inference.huggingface.co/models/stabilityai/stable-diffusion-3.5-large" ^
-H "Authorization: Bearer %APIKey%" ^
-H "Content-Type: application/json" ^
-d "{\"inputs\": \"%user_prompt%\", \"options\": {\"wait_for_model\": true}}" ^
-o %USERPROFILE%\Desktop\GeneratedContent\sd3.5large_%RANDOM%.png
Echo Image Generated! Check the folder named GeneratedContent on your desktop
pause
goto newstart

:35largeturbo
cls
if not exist "%USERPROFILE%\Desktop\GeneratedContent" (mkdir "%USERPROFILE%\Desktop\GeneratedContent")
set /p user_prompt=Enter your prompt: 
set user_prompt=%user_prompt:"=\"%
echo Selected Generator: Stable Diffusion 3.5 large turbo
echo Sending request...
curl -X POST "https://api-inference.huggingface.co/models/stabilityai/stable-diffusion-3.5-large-turbo" ^
-H "Authorization: Bearer %APIKey%" ^
-H "Content-Type: application/json" ^
-d "{\"inputs\": \"%user_prompt%\", \"options\": {\"wait_for_model\": true}}" ^
-o %USERPROFILE%\Desktop\GeneratedContent\sd3.5largeturbo_%RANDOM%.png
Echo Image Generated! Check the folder named GeneratedContent on your desktop
pause
goto newstart

:LocalAPIKey
cls
Echo Error_001: API Key not found
if not exist "%APPDATA%\ImageGenerator" (
    mkdir "%APPDATA%\ImageGenerator"
)
Echo Making a new file...
set /p APIKey=Enter HF Interface Read API Key: 
echo %APIKey% > %APPDATA%\ImageGenerator\212344588A.aop
Echo Restarting Program...
goto newstart

:UpdateAPIKey
cls
set /p APIKey=Enter HF Interface Read API Key: 
echo %APIKey% > %APPDATA%\ImageGenerator\212344588A.aop
Echo Restarting Program...
goto newstart