@echo off
setlocal EnableDelayedExpansion
title Instalador e Ativador do Microsoft Office

:: Cores
color 0A

echo.
echo    =============================================================================
echo    :::::::::  :::::::::: :::     :::    :::::::::: ::::::::::: :::    :::     :::     ::::    :::
echo    :+:    :+: :+:        :+:     :+:    :+:            :+:     :+:    :+:   :+: :+:   :+:+:   :+:
echo    +:+    +:+ +:+        +:+     +:+    +:+            +:+     +:+    +:+  +:+   +:+  :+:+:+  +:+
echo    +#+    +:+ +#++:++#   +#+     +:+    +#++:++#       +#+     +#++:++#++ +#++:++#++: +#+ +:+ +#+
echo    +#+    +#+ +#+         +#+   +#+     +#+            +#+     +#+    +#+ +#+     +#+ +#+  +#+#+#
echo    #+#    #+# #+#          #+#+#+#      #+#            #+#     #+#    #+# #+#     #+# #+#   #+#+#
echo    #########  ##########     ###        ##########     ###     ###    ### ###     ### ###    ####
echo    =============================================================================
echo    [+] Engenheiro de Software / IA / Fullstack: Everton Ethan
echo    [+] Site / Servicos: https://www.devfrontend.com.br
echo.
echo    --- Redes Pessoais ---
echo    [#] LinkedIn : https://www.linkedin.com/in/ethanaiengineer/
echo    [#] Instagram: https://www.instagram.com/ethan_essencial
echo.
echo    --- DevFrontend ---
echo    [#] Instagram: https://www.instagram.com/devfrontendoficial/
echo    [#] Facebook : https://www.facebook.com/devfrontendoficial
echo    ====================================================================
echo.
echo    NOTA: Em alguns terminais do Windows, basta segurar 'CTRL' 
echo    e clicar nos links acima para abri-los no navegador.
echo.

:: Verificacao de privilegios de administrador
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    echo ==============================================================================
    echo ERRO: ESTE SCRIPT PRECISA SER EXECUTADO COMO ADMINISTRADOR
    echo ==============================================================================
    echo.
    echo Por favor, clique com o botao direito no arquivo e selecione "Executar como Administrador".
    echo.
    pause
    exit /b
)

echo ==============================================================================
echo        INSTALADOR DO MICROSOFT OFFICE COM ATIVACAO PERMANENTE
echo ==============================================================================
echo.

:: Verificando instalacoes anteriores do Office
echo Verificando instalacoes anteriores do Office...
set "office_instalado=0"
reg query "HKLM\SOFTWARE\Microsoft\Office\ClickToRun\Configuration" /v ProductReleaseIds >nul 2>&1
if %errorlevel% equ 0 set "office_instalado=1"

if "%office_instalado%"=="1" (
    echo.
    echo [AVISO] Foi detectada uma instalacao existente do Microsoft Office neste computador.
    echo E altamente recomendado remover a versao anterior antes de instalar uma nova.
    echo.
    set /p "remover=Deseja remover o Office existente agora? (S/N): "
    if /i "!remover!"=="S" (
        echo.
        echo Iniciando remocao do Office existente...
        echo O processo de desinstalacao pode demorar alguns minutos.
        
        :: Cria arquivo XML temporario para desinstalar tudo
        echo ^<Configuration^>^<Remove All="TRUE" /^>^<Display Level="None" AcceptEULA="TRUE" /^>^</Configuration^> > "%~dp0remove-office.xml"
        
        cd /d "%~dp0"
        start /wait setup.exe /configure "%~dp0remove-office.xml"
        
        if exist "%~dp0remove-office.xml" del "%~dp0remove-office.xml"
        echo.
        echo Remocao concluida com sucesso!
        echo.
    )
)

echo Escolha qual versao do Office voce deseja instalar:
echo.
echo [1] Microsoft Office 2024 ProPlus (Recomendado)
echo [2] Microsoft Office 365 ProPlus (+ Visio e Project)
echo.
set /p "opcao=Digite o numero da opcao desejada (1 ou 2): "

if "%opcao%"=="2" (
    set "arquivo_xml=configuration-Office365-x64.xml"
    set "nome_office=Office 365 ProPlus"
) else (
    set "arquivo_xml=Configuracao.xml"
    set "nome_office=Office 2024 ProPlus"
)

echo.
echo ==============================================================================
echo [1/2] Iniciando a instalacao do %nome_office%...
echo Lendo as configuracoes de: %arquivo_xml%
echo.
echo Por favor, aguarde enquanto o Office e baixado e instalado.
echo Uma janela do instalador do Office sera aberta.
echo ==============================================================================
echo.

cd /d "%~dp0"
start /wait setup.exe /configure "%~dp0%arquivo_xml%"

echo.
echo Instalacao do Office concluida!
echo.
echo ==============================================================================
echo [2/2] Iniciando a ativacao permanente do Office (Ohook)...
echo ==============================================================================
echo.

:: Executando o script MAS (Microsoft Activation Scripts) em modo silencioso para ativar o Office via Ohook
powershell -NoProfile -ExecutionPolicy Bypass -Command "& ([ScriptBlock]::Create((New-Object Net.WebClient).DownloadString('https://get.activated.win'))) /Ohook"

echo.
echo ==============================================================================
echo                              PROCESSO CONCLUIDO!
echo ==============================================================================
echo O %nome_office% foi instalado e ativado permanentemente com sucesso.
echo.
pause