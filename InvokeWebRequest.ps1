try {
    $result = Invoke-WebRequest -Uri "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd"
    Write-Output "$($result.toString())"
}
catch {
    Write-Output "$($PSItem.ToString())"
}