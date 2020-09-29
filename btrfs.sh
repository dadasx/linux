#!/bin/bash

%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
@echo off
color 1f
:menu
cls
cd %~dp0
echo.
echo             ╔══╦══╦══════════════════════════════════════════════╦══╦══╗
echo             ║  ║  ║                                              ║  ║  ║
echo             ╠══╬══╣         
echo             ║  ║  ║                                              ║  ║  ║
echo             ╠══╩══╬══╦══╦══════════════════════════════════╦══╦══╬══╩══╣
echo             ║     ║  ║  ║                                  ║  ║  ║     ║
echo             ║     ╠══╬══╣                 ╠══╬══╣          ║
echo             ║     ║  ║  ║                                  ║  ║  ║     ║
echo             ╚═════╩══╩══╩══════════════════════════════════╩══╩══╩═════╝
echo.
echo  　　    『如果覺得我的文章或程式對你有幫助，歡迎到我的FB粉絲頁面點個讚。』
echo.
echo          【主選單】請選擇您要執行的功能：
echo.
echo          １.creat    ２.delete
echo.
echo          ３.『exit』                    
echo.
echo          
echo.
echo          
echo.
set /p choice=請輸入功能編號:
if /i "%choice%"=="1" goto creat
if /i "%choice%"=="2" goto delete
if /i "%choice%"=="3" goto show
if /i "%choice%"=="4" goto exit

:creat
cd %~dp0
echo "--------------------------"
echo "  subvolume creat ...     "
echo "--------------------------"

echo "                          "

sudo btrfs subvolume creat /mnt/@
sudo btrfs subvolume creat /mnt/@home

echo "                          "
goto menu

:show
cd %~dp0
echo "--------------------------"
echo "  show subvolume list ... "
echo "--------------------------"

echo "                          "
echo "                          "

sudo btrfs subvolume list /

echo "                          "

echo "-----------------------------------------"
echo "  complete btrfs subvolume list ...      "
echo "  B06170026 2020/09/28 final             "
echo "-----------------------------------------"

goto menu

:delete
cd %~dp0

echo "                          "

sudo btrfs subvolume delete /mnt/@
sudo btrfs subvolume delete /mnt/@home



echo "--------------------------------------"
echo "  btrfs subvolume delete complete ... "
echo "--------------------------------------"

goto menu
