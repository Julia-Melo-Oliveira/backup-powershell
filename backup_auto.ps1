# Script de Backup com criação automática de pastas
# Autor: Julia Melo Oliveira

# Pasta de origem
$origem = "C:\Backup\Origem"

# Pasta de destino base
$destinoBase = "C:\Backup\Destino"

# Cria pastas se não existirem
if (!(Test-Path -Path $origem)) {
    New-Item -ItemType Directory -Path $origem -Force | Out-Null
}
if (!(Test-Path -Path $destinoBase)) {
    New-Item -ItemType Directory -Path $destinoBase -Force | Out-Null
}

# Data atual para nomear a pasta
$data = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$destino = "$destinoBase\Backup_$data"

# Cria a pasta de destino
New-Item -ItemType Directory -Path $destino -Force | Out-Null

# Arquivo de log
$logFile = "$destinoBase\backup_log.txt"

# Copia os arquivos e registra no log
try {
    Copy-Item -Path "$origem\*" -Destination $destino -Recurse -Force
    $mensagem = "[$(Get-Date)] Backup concluído com sucesso em $destino"
    Add-Content -Path $logFile -Value $mensagem
    Write-Output $mensagem
}
catch {
    $erro = "[$(Get-Date)] Erro no backup: $_"
    Add-Content -Path $logFile -Value $erro
    Write-Output $erro
}
