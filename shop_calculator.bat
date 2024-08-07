@echo off
setlocal enabledelayedexpansion

:start
cls
echo Netherlands Trading Shop Calculator
echo ====================================

set /p code=Enter the product code (1-15): 

if "%code%"=="1" (
    set "product=1 Stack of Brick Blocks"
    set "price=250"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="2" (
    set "product=10 Tomatoes, Peaches, Pomegranates"
    set "price=50"
    set "quantity_factor=1"   REM No need to adjust quantity for these items
) else if "%code%"=="3" (
    set "product=Full Iron Armor (Out Of Stock On Occasions)"
    set "price=100"
    set "quantity_factor=1"   REM No need to adjust quantity for armor
) else if "%code%"=="4" (
    set "product=1 Stack of Bread"
    set "price=100"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="5" (
    set "product=16 Soul Sand"
    set "price=100"
    set "quantity_factor=16"  REM Set the quantity factor for soul sand
) else if "%code%"=="6" (
    set "product=1 Stack of Oak Planks"
    set "price=100"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="7" (
    set "product=2 Llamas"
    set "price=500"
    set "quantity_factor=2"   REM Set the quantity factor for llamas
) else if "%code%"=="8" (
    set "product=1 Stack of Melons"
    set "price=80"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="9" (
    set "product=16 XP Bottles"
    set "price=150"
    set "quantity_factor=16"  REM Set the quantity factor for XP bottles
) else if "%code%"=="10" (
    set "product=1 Stack of Seeds"
    set "price=100"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="11" (
    set "product=1 Stack of Wheat"
    set "price=100"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="12" (
    set "product=1 Stack of Bonemeal"
    set "price=600"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="13" (
    set "product=1 Stack of Cobblestone"
    set "price=100"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="14" (
    set "product=1 Stack of Red Sand"
    set "price=200"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="15" (
    set "product=1 Stack of Red Sandstone"
    set "price=200"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else (
    echo Invalid code. Please try again.
    pause
    goto start
)

echo.
echo Product: %product%
echo Price: $%price%

set /p quantity=Enter the quantity: 

REM Adjust total price based on quantity and quantity_factor
if %quantity% equ 1 (
    set /a total=%price% / %quantity_factor%
) else (
    set /a total=%price% * %quantity% / %quantity_factor%
)

echo.
echo Total price: $%total%

echo.
set /p choice=Do you want to calculate another product? (Y/N): 
if /i "%choice%"=="Y" goto start

echo Thank you for using the Netherlands Trading Shop Calculator!
pause
