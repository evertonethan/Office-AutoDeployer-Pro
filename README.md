<div align="center">

# 🚀 Office AutoDeployer Pro

**Instalador e Ativador Permanente do Microsoft Office**

[![Licença](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Windows](https://img.shields.io/badge/OS-Windows_10_|_11-blue.svg)](https://www.microsoft.com/windows/)
[![Versão](https://img.shields.io/badge/Versão-1.0.0-orange.svg)]()

Um utilitário de implantação completo, seguro e automatizado para instalar e ativar permanentemente as versões mais recentes do Microsoft Office (2024 ProPlus e 365 ProPlus) utilizando o **Office Deployment Tool (ODT)** e o método de ativação **Ohook**.

---
</div>

## 📌 Visão Geral

O **Office AutoDeployer Pro** foi criado para simplificar o processo muitas vezes confuso de instalação e ativação do pacote Office. Com apenas um clique (e privilégios de administrador), o script realiza uma limpeza de versões antigas conflitantes, baixa a versão mais atualizada dos servidores oficiais da Microsoft, instala todos os aplicativos em **Português do Brasil (pt-BR)** e, por fim, aplica uma licença permanente (vitalícia) de forma silenciosa.

## ✨ Recursos e Funcionalidades

- 🧹 **Desinstalação Inteligente:** Detecta automaticamente instalações prévias do Office e oferece a opção de remoção profunda (Clean Uninstall) antes de prosseguir.
- 📦 **Dual Version:** Escolha interativa entre instalar o **Office 2024 ProPlus** ou o **Office 365 ProPlus** (que inclui ferramentas avançadas como Visio e Project).
- 🇧🇷 **Localização Nativa:** Todos os aplicativos são configurados para instalação em `pt-BR` por padrão.
- 🔄 **Atualizações Automáticas:** As configurações XML já habilitam o download do pacote contendo os patches de segurança e recursos mais recentes.
- 🔓 **Ativação Definitiva (Ohook):** Integração limpa com o *Microsoft Activation Scripts (MAS)*. Diferente dos antigos ativadores KMS que expiram a cada 180 dias, o método Ohook é permanente, não detectado como malware e não exige renovações em segundo plano.
- �️ **Interface Gráfica Moderna:** Conta agora com uma UI (User Interface) elegante e intuitiva, proporcionando uma experiência visual passo a passo sem a necessidade de usar o terminal.

## 🛠️ Pré-requisitos

- **Sistema Operacional:** Windows 10 ou Windows 11 (Arquitetura 64 bits recomendada).
- **Conexão com a Internet:** Necessária para o download dos pacotes oficiais da Microsoft e do script de ativação.
- **Privilégios:** O script exigirá execução como Administrador para manipular registros e serviços do sistema.

## 🚀 Como Utilizar

1. **Faça o download / Extraia** todos os arquivos para uma pasta local (Ex: `C:\Office-ativado`).
2. Clique com o botão direito do mouse sobre o arquivo **`Instalar_e_Ativar.cmd`** (ou no atalho **`Instalar Office`**).
3. Selecione a opção **"Executar como Administrador"**.
4. Uma **Interface Gráfica Moderna** será aberta na sua tela.
5. Siga os passos visuais:
   - Se o script detectar uma versão antiga, uma janela de aviso aparecerá perguntando se você deseja removê-la (Recomendado).
   - Selecione na caixa de opções qual versão deseja instalar (Office 2024 ProPlus ou Office 365 ProPlus).
   - Clique no botão dourado **"Iniciar Instalação Automática"**.
6. Acompanhe o status na tela (Baixar ➔ Instalar ➔ Ativar).
7. Ao finalizar, aparecerá a mensagem verde informando que o Office foi instalado e ativado com sucesso!

## ⚙️ Estrutura de Arquivos

| Arquivo | Descrição |
| :--- | :--- |
| `Instalar_e_Ativar.cmd` | O inicializador principal. Valida privilégios de administrador e inicia a Interface Gráfica. |
| `InstaladorUI.hta` | A nova interface gráfica moderna que gerencia todo o fluxo visual. |
| `setup.exe` | O executável oficial do Microsoft Office Deployment Tool (ODT). |
| `Configuracao.xml` | Arquivo de regras para o download e instalação da versão Office 2024 ProPlus. |
| `configuration-Office365-x64.xml` | Arquivo de regras para o download e instalação da versão Office 365 ProPlus (+ Visio e Project). |

> **Dica de Customização:** Se você não deseja instalar algum aplicativo específico (como o Microsoft Access ou Publisher), basta abrir os arquivos `.xml` em qualquer editor de texto e remover os comentários `<!--` e `-->` das linhas `<ExcludeApp ID="..." />` correspondentes.

## 👨‍💻 Autor

Criado e mantido com 💚 por **Dev Ethan**

- **Engenheiro de Software | Engenheiro de IA | Fullstack Developer**
- 🌐 Site/Serviços: [devfrontend.com.br](https://www.devfrontend.com.br)
- 💼 LinkedIn: [Everton Ethan](https://www.linkedin.com/in/ethanaiengineer/)
- 📸 Instagram Pessoal: [@ethan_essencial](https://www.instagram.com/ethan_essencial)
- 🚀 Instagram Profissional: [@devfrontendoficial](https://www.instagram.com/devfrontendoficial/)
- 📘 Facebook: [DevFrontend Oficial](https://www.facebook.com/devfrontendoficial)

---
*Aviso Legal: Este script utiliza o método Ohook do repositório open-source MAS para fins educacionais e de automação de testes. Certifique-se de estar em conformidade com os Termos de Serviço de Software da Microsoft aplicáveis à sua região e licença corporativa.*