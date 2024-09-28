$NUMBER_OF_DIRECTORIES = 91

$NUMBER_OF_DIRECTORIES = Read-Host "How many directories should I create?"

function Set-Directory {
    param (
        [int]$n
    )

    for ($i = 0; $i -le $n; $i++) {
        # Format the directory name with zero padding if necessary
        $dirName = "step-{0:D2}" -f $i

        if (-not (Test-Path -Path $dirName -PathType Container)) {
            # Create directory if it doesn't exist
            New-Item -ItemType Directory -Path $dirName | Out-Null
        }
        
        # Create index.html inside the directory
        $filePath = Join-Path $dirName "index.html"
        if (-not (Test-Path -Path $filePath)) {
            New-Item -ItemType File -Path $filePath | Out-Null
        }
    }
}

Set-Directory -n $NUMBER_OF_DIRECTORIES
