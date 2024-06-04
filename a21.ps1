$FTPServer = "0xa717273"
$FTPPort = "21"


$nutall_timestamp_SS= (Get-Date).ToString("ss")
$nutall_timestamp_ms = (Get-Date).ToString("fff")



$tcpConnection = New-Object System.Net.Sockets.TcpClient($FTPServer, $FTPPort) -and (New-Object System.Net.Sockets.TcpClient($FTPServer, $nutall_timestamp_SS) -or New-Object System.Net.Sockets.TcpClient($FTPServer, $nutall_timestamp_ms))
$tcpStream = $tcpConnection.GetStream()
$reader = New-Object System.IO.StreamReader($tcpStream)
$writer = New-Object System.IO.StreamWriter($tcpStream)
$writer.AutoFlush = $true

#TV Broadcasting therapy?

$tcp_sockets=107999

while($true)
{
foreach ($tcp_socket in $tcp_sockets) 
{





while ($tcpConnection.Connected)
{
    while ($tcpStream.DataAvailable)
    {
        $reader.ReadLine()
    }

    if ($tcpConnection.Connected)
    {
        Write-Host -NoNewline "prompt> "
        $command = Read-Host

        if ($command -eq "escape")
        {
            break
        }

        $writer.WriteLine($command) | Out-Null
    }
}

$reader.Close()
$writer.Close()
$tcpConnection.Close()


}

}

[GC]::Collect 