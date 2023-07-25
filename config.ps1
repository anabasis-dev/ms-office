

$config=(Get-Content setup.conf)
Foreach ($i in $config){
    $property=(Set-Variable -Name $i.split("=")[0] -Value $i.split("=",2)[1])

    echo $property
    return $property
    
}
