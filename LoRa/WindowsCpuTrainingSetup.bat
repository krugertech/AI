@echo off
setlocal enabledelayedexpansion

:: Step 1: Download Miniconda installer
echo Downloading Miniconda...
curl -L -o "%UserProfile%\Downloads\Miniconda3-latest-Windows-x86_64.exe" https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe

:: Step 2: Install Miniconda silently
echo Installing Miniconda...
start /wait "" "%UserProfile%\Downloads\Miniconda3-latest-Windows-x86_64.exe" ^
/InstallationType=JustMe ^
/AddToPath=1 ^
/RegisterPython=1 ^
/S ^
/D=%UserProfile%\Miniconda3

:: Step 3: Initialize conda and create environment
echo Creating conda environment...
call "%UserProfile%\Miniconda3\Scripts\activate.bat"
call conda create -n tcpu python=3.12 -y

:: Step 4: Activate environment and install packages
call conda activate tcpu
call pip install transformers
call pip install huggingface_hub
call pip install peft
call pip install sentencepiece
call pip install playsound

echo Setup complete. You can now use the 'tcpu' environment.
pause
