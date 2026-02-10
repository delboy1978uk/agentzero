@echo off
setlocal

set "stop_requested=false"

for /f "delims=- " %%a in ('%~1') do (
    case %%a in
        /stop|/s|stop)
            set "stop_requested=true"
            goto :endloop
            ;;
        /help|/h)
            echo Usage: %~n0 [--stop] [other options]
            exit /b 0
            ;;
    esac
)

:endloop
if "%stop_requested%"=="true" (
    echo Stopping agent zero
    docker-compose down
    exit /b 0
)

echo Starting Agent zero...
docker-compose up %~1

endlocal
