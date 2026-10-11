@echo off
rem 植物大战僵尸 · 极简版 — 一键启动
rem 自动寻找可用浏览器（Chrome 优先，Edge 兜底），不依赖系统默认关联
setlocal
set "GAME=%~dp0index.html"

if exist "%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe" (
  start "" "%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe" "%GAME%"
  goto :eof
)
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
  start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "%GAME%"
  goto :eof
)
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
  start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "%GAME%"
  goto :eof
)
rem 都没有则交给系统默认关联
start "" "%GAME%"
