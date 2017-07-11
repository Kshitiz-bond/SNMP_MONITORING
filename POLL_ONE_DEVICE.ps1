

Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object system.Windows.Forms.Form
$Form.Text = "Form"
$Form.TopMost = $true
$Form.Width = 800
$Form.Height = 700
$Form.AutoScroll = $true

$label3 = New-Object system.windows.Forms.Label
$label3.Text = "UpTime"
$label3.AutoSize = $true
$label3.Width = 250
$label3.Height = 25
$label3.location = new-object system.drawing.point(3,25)
$label3.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label3)




$label4 = New-Object system.windows.Forms.Label
$label4.Text = "SysLocation"
$label4.AutoSize = $true
$label4.Width = 250
$label4.Height = 25
$label4.location = new-object system.drawing.point(3,3)
$label4.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label4)


$label1 = New-Object system.windows.Forms.Label
$label1.Text = "SysObkectID"
$label1.AutoSize = $true
$label1.Width = 250
$label1.Height = 25
$label1.location = new-object system.drawing.point(3,50)
$label1.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label1)

$label5 = New-Object system.windows.Forms.Label
$label5.Text = "STATUS"
$label5.BackColor = "#f10741"
$label5.AutoSize = $true
$label5.Width = 35
$label5.Height = 15
$label5.location = new-object system.drawing.point(345,200)
$label5.Font = "Microsoft Sans Serif,12,style=Bold"
$Form.controls.Add($label5)

$button3 = New-Object system.windows.Forms.Button
$button3.Text = "GetUptime"
$button3.Width = 190
$button3.Height = 40
$button3.location = new-object system.drawing.point(280,271)
$button3.ForeColor = [System.Drawing.Color]::Blue
$button3.Font = "Microsoft Sans Serif,15,style=Bold"
$button3.Add_Click(
   {  
   #using loop for continous output
   #########################
   $a = 1 
DO
{

$label3.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.3.0

 $a++

} While ($a -le 10)

 $label5.BackColor = "#00FF00"
}
)
$Form.controls.Add($button3)

$button4 = New-Object system.windows.Forms.Button
$button4.Text = "GetSysLocation"
$button4.Width = 190
$button4.Height = 40
$button4.location = new-object system.drawing.point(3,271)
$button4.ForeColor = [System.Drawing.Color]::Blue
$button4.Font = "Microsoft Sans Serif,15,style=Bold"
$button4.Add_Click(
   {   
   $label4.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.6.0
   
}
)
$Form.controls.Add($button4)

$button1 = New-Object system.windows.Forms.Button
$button1.Text = "GetSysObjectID"
$button1.Width = 190
$button1.Height = 40
$button1.location = new-object system.drawing.point(580,271)
$button1.ForeColor = [System.Drawing.Color]::Blue
$button1.Font = "Microsoft Sans Serif,15,style=Bold"
$button1.Add_Click(
   {   
   $label1.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.2.0
   
}
)
$Form.controls.Add($button1)


$label2 = New-Object system.windows.Forms.Label
$label2.Text = "SysDescr"
$label2.AutoSize = $true
$label2.Width = 250
$label2.Height = 25
$label2.location = new-object system.drawing.point(3,75)
$label2.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label2)

$button2 = New-Object system.windows.Forms.Button
$button2.Text = "GetDescr"
$button2.Width = 190
$button2.Height = 40
$button2.location = new-object system.drawing.point(280,371)
$button2.ForeColor = [System.Drawing.Color]::Blue
$button2.Font = "Microsoft Sans Serif,15,style=Bold"
$button2.Add_Click(
   {   
   $label2.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.1.0
   
}
)
$Form.controls.Add($button2)

$label6 = New-Object system.windows.Forms.Label
$label6.Text = "SysName"
$label6.AutoSize = $true
$label6.Width = 250
$label6.Height = 25
$label6.location = new-object system.drawing.point(3,100)
$label6.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label6)

$button6 = New-Object system.windows.Forms.Button
$button6.Text = "GetSysName"
$button6.Width = 190
$button6.Height = 40
$button6.location = new-object system.drawing.point(150,471)
$button6.ForeColor = [System.Drawing.Color]::Blue
$button6.Font = "Microsoft Sans Serif,15,style=Bold"
$button6.Add_Click(
   {   
   $label6.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.5.0
   
}
)
$Form.controls.Add($button6)

$label7 = New-Object system.windows.Forms.Label
$label7.Text = "SysContact"
$label7.AutoSize = $true
$label7.Width = 250
$label7.Height = 25
$label7.location = new-object system.drawing.point(3,125)
$label7.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label7)

$button7 = New-Object system.windows.Forms.Button
$button7.Text = "GetSysConatct"
$button7.Width = 190
$button7.Height = 40
$button7.location = new-object system.drawing.point(400,471)
$button7.ForeColor = [System.Drawing.Color]::Blue
$button7.Font = "Microsoft Sans Serif,15,style=Bold"
$button7.Add_Click(
   {   
   $label7.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.4.0
   
}
)
$Form.controls.Add($button7)

$label8 = New-Object system.windows.Forms.Label
$label8.Text = "SysServices"
$label8.AutoSize = $true
$label8.Width = 250
$label8.Height = 25
$label8.location = new-object system.drawing.point(3,150)
$label8.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label8)

$button8 = New-Object system.windows.Forms.Button
$button8.Text = "GetSysServices"
$button8.Width = 190
$button8.Height = 40
$button8.location = new-object system.drawing.point(280,571)
$button8.ForeColor = [System.Drawing.Color]::Blue
$button8.Font = "Microsoft Sans Serif,15,style=Bold"
$button8.Add_Click(
   {   
   $label8.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.7.0
   
}
)
$Form.controls.Add($button8)


##############adding button for stopping the script



[void]$Form.ShowDialog()
$Form.Dispose()





