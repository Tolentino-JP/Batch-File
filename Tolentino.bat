@echo off 
SETLOCAL EnableDelayedExpansion

set /p exam1= Enter the score for exam 1 (out of 100): 
set /p exam2= Enter the score for exam 2 (out of 100): 
set /p exam3= Enter the score for exam 3 (out of 100): 
set /p attendance= Enter the attendance points (out of 10): 

:: computation

set /a final = (!exam1! + !exam2! + !exam3!)/3


if %attendance% equ 10 (
    echo.
    echo Final Grade: 
    set /a bonus = %final% + 5
    echo Numerical Grade: !bonus! (including attendance bonus^^^)
    set /a final = bonus
    goto new
) else (
    goto ewan
)

:ewan

echo.

echo Final Grade:
echo Numerical Grade: %final%

:new

if %final% gtr 89 (
    if !final! lss 101 (
        echo Letter Grade: A
    )
) else if %final% gtr 79 (
    if !final! lss 90 (
        echo Letter Grade: B
    )
) else if %final% gtr 69 (
    if !final! lss 80 (
        echo Letter Grade: C
    ) 
) else if %final% gtr 59 (
    if !final! lss 70 (
        echo Letter Grade: D
    ) 
) else (
    echo Letter Grade: F
)


pause