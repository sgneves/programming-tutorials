$Commands = @(
    "Select-String -Pattern 'abc' -Path .\Text.txt"
    "(Select-String -Pattern 'abc' -Path .\Text.txt) | Select-Object -ExpandProperty Line"
    "(Select-String -Pattern 'abc' -Path .\Text.txt).Matches.Value"
    "Select-String -Pattern 'abc' -Path .\Text.txt -CaseSensitive"
    "(Select-String -Pattern 'abc' -Path .\Text.txt -AllMatches).Matches.Value"
)

foreach ($Command in $Commands)
{
    Write-Host ("`n" + $Command)
    Invoke-Expression $Command
}
