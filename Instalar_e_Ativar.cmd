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

echo Iniciando a Interface Grafica do Office AutoDeployer Pro...
start mshta "%~dp0InstaladorUI.hta"
exit