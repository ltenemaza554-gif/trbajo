# En la clases pusimos este codigo y sirve para ver una barra  progreso en PowerShell según el tiempo indicado que son 30 segundos.
#Y suele mustra  para ver cuánto falta mientras se ejecuta una tarea o espera.
function Start-ProgressBar {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        $Title,
        
        [Parameter(Mandatory = $true)]
        [int]$Timer
    )
    
    for ($i = 1; $i -le $Timer; $i++) {
        Start-Sleep -Seconds 1
        $percentComplete = ($i / $Timer) * 100
        Write-Progress -Activity $Title -Status "$i seconds elapsed" -PercentComplete $percentComplete
    }
} 

# Call the function
Start-ProgressBar -Title "Test timeout" -Timer 30