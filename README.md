
Backup PowerShell com Log e Data

Projeto de automação em PowerShell que realiza backup de arquivos de uma pasta de origem para uma pasta de destino.  
Cada execução gera uma nova pasta nomeada com data/hora e registra o resultado em um arquivo de log.

## >> Objetivo
- Automatizar backups simples em ambiente Windows.
- Criar histórico de execuções com log.
- Demonstrar boas práticas de automação e documentação.
- Treinar o básico do powershell

## >> Como usar
1. Crie duas pastas:
   - Origem: `C:\Backup\Origem`
   - Destino: `C:\Backup\Destino`
2. Ajuste os caminhos no script se necessário.
3. Execute o arquivo `backup.ps1` no PowerShell:
   ```powershell
   .\backup.ps1
## >> Como usar pt.2

Além da versão principal, existe também o script `backup_auto.ps1`.  
Essa versão verifica se as pastas de origem e destino existem e, caso não, cria automaticamente antes de executar o backup.

