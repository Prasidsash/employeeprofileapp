@echo off
REM Define your project root once
set PROJECT_ROOT=D:\2026\Project-EmpProfApp\DockerDesktop-Local\employeeprofileapp

REM Launch Windows Terminal with startup tabs using the variable
wt ^
  new-tab -p "Windows PowerShell" -d "%PROJECT_ROOT%\terraform\environments\dev" --title "DEV-INFRA" ; ^
  new-tab -p "Windows PowerShell" -d "%PROJECT_ROOT%\terraform\environments\qa" --title "QA-INFRA" ; ^
  new-tab -p "Windows PowerShell" -d "%PROJECT_ROOT%\terraform\environments\uat" --title "UAT-INFRA" ; ^
  new-tab -p "Windows PowerShell" -d "%PROJECT_ROOT%\terraform\environments\prod" --title "PROD-INFRA" ; ^
  new-tab -p "Windows PowerShell" -d "%PROJECT_ROOT%" --title "PROJ-HOME" ; ^
  new-tab -p "Windows PowerShell" -d "%PROJECT_ROOT%\helm\app-chart" --title "HELM" ; ^
  new-tab -p "Windows PowerShell" -d "C:\Users\aixra" --title "KUBECTL" ; ^
  new-tab -p "Windows PowerShell" -d "%PROJECT_ROOT%" --title "GIT"