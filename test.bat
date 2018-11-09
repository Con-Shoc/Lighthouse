@echo off
ECHO We have Lift off. 


for /f "delims=," %%a in (%cd%\urls.txt) DO (
ECHO Analyzing page: %%a


lighthouse %%a --output csv --output html --output json --quiet --chrome-flags="--headless"

)


