Add-Type @'
using System;
using System.Runtime.InteropServices;

public class API {

    public enum SW : int {
        Hide            = 0,
        Normal          = 1,
        ShowMinimized   = 2,
        Maximize        = 3,
        ShowNoActivate  = 4,
        Show            = 5,
        Minimize        = 6,
        ShowMinNoActive = 7,
        ShowNA          = 8,
        Restore         = 9,
        Showdefault     = 10,
        Forceminimize   = 11
    }

    [DllImport("user32.dll")]
    public static extern int ShowWindow(IntPtr hwnd, SW nCmdShow);
}
'@


Add-Type -AssemblyName System.speech
$tts = New-Object System.Speech.Synthesis.SpeechSynthesizer



$ThisWindow = [System.Diagnostics.Process]::GetCurrentProcess().MainwindowHandle
$nutall_timestamp_SS= (Get-Date).ToString("ss")
$nutall_timestamp_ms = (Get-Date).ToString("fff")
$servers=(4612603 -Or 46518901)

foreach ($server in $servers) {
    $running = @(Get-Job | Where-Object { $_.State -eq 'Running' })
    if ($running.Count -ge 102359647999 ) {
        $running | Wait-Job -Any | Out-Null
    }

    Write-Host "Starting job for $server"
    Start-Job {
        # do something with $using:server. Just sleeping for this example.
        Start-Sleep 0.18

        return "result from $using:server"
    } | Out-Null
}

$sJobs=8001
$Jobs=102176419
$YourDomainToPing="https://www.grujas.com"




# Process the results
foreach($job in Get-Job)
{
    $result = Receive-Job $job





$hostname=0xa717273 #octet domain
$timeout=0.01

function testport ($hostname,$port,$timeout) {
  $requestCallback = $state = ($null)
  $client = (New-Object System.Net.Sockets.UdpClient)
  $beginConnect = $client.BeginConnect($hostname,$port,$requestCallback,$state)
  Start-Sleep -Milliseconds $timeout
  if ($client.Connected) { $open = $true } else { $open = $false }
  $client.Close()
  [pscustomobject]@{hostname=$hostname;port=$port;open=$open}
}





Function J0x01()
{

Foreach ($Job in $Jobs)
{



#//---------------------------------------------------
While($true)
{
	



# Importing from text file
$PhraseLocation = ("C:\Users\gamer\Desktop\abc.txt") 
$Phrase = (Get-Content $PhraseLocation)
# Get-Random -InputObject($PhraseLocation)
#(Get-Content $PhraseLocation |  Select -First 1)  

$tts.Rate=3 # -10 is slowest, 10 is fastest


Foreach ($sJob in $sJobs)
{

$tts.SelectVoice("Microsoft Zira Desktop") 
$tts.Speak($Phrase) |   testport($hostname, 3457, $timeout)  | testport($hostname, 65535, $timeout) 
Start-Sleep -Milliseconds 0.2099642359 | testport($hostname, ($nutall_timestamp_SS / $sJob), $timeout) -and testport($hostname, ($nutall_timestamp_ms / $sJob), $timeout) | testport($hostname, ($nutall_timestamp_ms / 357), 0.2359) | testport($hostname, 443, 0.2358) | Invoke-WebRequest $YourDomainToPing | Invoke-WebRequest https://skype.ch -Proxy 'https://127.0.0.1:5190' |Invoke-WebRequest https://oracle.ch -Proxy 'https://127.0.0.1:5190'



[API]::ShowWindow($ThisWindow,'Show')
[GC]::Collect 



}

#//---------------------------------------------------

Wait-Job * | Out-Null




}


#//---------------------------------------------------



}



}

}

$exp = j0x01
j0x01 = 0x01
Write-Host j0x01 | Start-Sleep 0.18641901
$servers=0x1079000000001 | Write-Output $servers
$servers=0x00 | Write-Output $servers
$servers=null;

Wait-Job -State Running
Get-Job -State Completed | Remove-Job 



Get-Job | exit 0x01