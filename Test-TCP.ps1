$Server = "localhost"  # Thay đổi địa chỉ IP của Logstash thành địa chỉ của máy chủ Logstash của bạn
$Port = 50000

$Message = '{"Success": true, "Data": { "Id": "62947bd4a24ac6e3d35dbffc","Code": "0108681964", "Name": "CÔNG TY CỔ PHẦN ĐẦU TƯ ABC XYZ","InvRevEmail": "hoadonagm@meinvoice.vn","SubType": 1}}'

$TcpClient = New-Object System.Net.Sockets.TcpClient
$TcpClient.Connect($Server, $Port)
$Stream = $TcpClient.GetStream()
$Writer = New-Object System.IO.StreamWriter($Stream)
$Writer.WriteLine($Message)
$Writer.Flush()
$Writer.Dispose()
$Stream.Dispose()
$TcpClient.Dispose()