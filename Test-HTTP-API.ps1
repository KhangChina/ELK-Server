$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Content-Type", "application/json")

$body = @"
{
    `"Success`": true,
    `"Data`": {
        `"Id`": `"62947bd4a24ac6e3d35dbffc`",
        `"Code`": `"0108681964`",
        `"Name`": `"CÔNG TY CỔ PHẦN ĐẦU TƯ ABC XYZ`",
        `"Address`": `"Tầng 23, Tòa nhà văn phòng Viwaseen, Số 48 Tố Hữu, Phường Trung Văn, Quận Nam Từ Liêm, Thành phố Hà Nội, Việt Nam`",
        `"OwnerId`": `"c4582070-47cc-4686-b19e-5fc4bc6e68ad`",
        `"InvRevEmail`": `"hoadonagm@abcxyz.vn`",
        `"SubType`": 1
    }
}
"@

$response = Invoke-RestMethod 'http://localhost:8088' -Method 'PUT' -Headers $headers -Body $body
$response | ConvertTo-Json