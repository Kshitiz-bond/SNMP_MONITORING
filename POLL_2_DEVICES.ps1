$Button_Click = 
{
   

#####adding a NEW form 

Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object system.Windows.Forms.Form
$Form.Text = "Form"
$Form.TopMost = $true
$Form.Width = 1000
$Form.Height = 1000
$Form.AutoScroll = $true
###################DEVICE 2 PARAMETERS

$label19 = New-Object system.windows.Forms.Label
$label19.Text = "DEVICE 2"
$label19.AutoSize = $true
$label19.Width = 250
$label19.Height = 10
$label19.ForeColor = [System.Drawing.Color]::Magenta
$label19.location = new-object system.drawing.point(500,3)
$label19.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label19)


##UPTIME 2
$label9 = New-Object system.windows.Forms.Label
$label9.Text = "UpTime2"
$label9.AutoSize = $true
$label9.Width = 250
$label9.Height = 25
$label9.location = new-object system.drawing.point(500,25)
$label9.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label9)

######ADDING LABEL FOR ANOTHER STATUS DEVICE 2

$label12 = New-Object system.windows.Forms.Label
$label12.Text = "STATUS"
$label12.BackColor = "#f10741"
$label12.AutoSize = $true
$label12.Width = 35
$label12.Height = 15
$label12.location = new-object system.drawing.point(650,220)
$label12.Font = "Microsoft Sans Serif,12,style=Bold"
$Form.controls.Add($label12)



$button9 = New-Object system.windows.Forms.Button
$button9.Text = "uptime2"
$button9.Width = 190
$button9.Height = 40
$button9.location = new-object system.drawing.point(500,300)
$button9.ForeColor = [System.Drawing.Color]::Green
$button9.Font = "Microsoft Sans Serif,15,style=Bold"
$button9.Add_Click(
    {  
   #using loop for continous output
   #########################
   $b = 1 
DO
{

$label9.Text = snmpget -Os -c public -v 1 14.7.121.156 1.3.6.1.2.1.1.3.0
$b++

} While ($b -le 10)

  $label12.BackColor = "#ffFF00"

}

)
$Form.controls.Add($button9)

########SYSTEM OBJECT ID 2

$label4 = New-Object system.windows.Forms.Label
$label4.Text = "SysOBJECTid"
$label4.AutoSize = $true
$label4.Width = 250
$label4.Height = 25
$label4.location = new-object system.drawing.point(500,50)
$label4.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label4)

$button4 = New-Object system.windows.Forms.Button
$button4.Text = "GetSysObjectID"
$button4.Width = 190
$button4.Height = 40
$button4.location = new-object system.drawing.point(500,400)
$button4.ForeColor = [System.Drawing.Color]::Green
$button4.Font = "Microsoft Sans Serif,15,style=Bold"
$button4.Add_Click(
   {   
   $label4.Text = snmpget -Os -c public -v 1 14.7.121.156 1.3.6.1.2.1.1.2.0
   
}
)
$Form.controls.Add($button4)

#########SYSTEM DESCRIPTION 2

$label13 = New-Object system.windows.Forms.Label
$label13.Text = "SysDescr"
$label13.AutoSize = $true
$label13.Width = 250
$label13.Height = 25
$label13.location = new-object system.drawing.point(500,75)
$label13.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label13)

$button13 = New-Object system.windows.Forms.Button
$button13.Text = "GetDescr"
$button13.Width = 190
$button13.Height = 40
$button13.location = new-object system.drawing.point(500,500)
$button13.ForeColor = [System.Drawing.Color]::Green
$button13.Font = "Microsoft Sans Serif,15,style=Bold"
$button13.Add_Click(
   {   
   $label13.Text = snmpget -Os -c public -v 1 14.7.121.156 1.3.6.1.2.1.1.1.0
   
}
)
$Form.controls.Add($button13)

########SYSTEM NAME 2

$label14 = New-Object system.windows.Forms.Label
$label14.Text = "SysName"
$label14.AutoSize = $true
$label14.Width = 250
$label14.Height = 25
$label14.location = new-object system.drawing.point(500,100)
$label14.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label14)

$button14 = New-Object system.windows.Forms.Button
$button14.Text = "GetSysName"
$button14.Width = 190
$button14.Height = 40
$button14.location = new-object system.drawing.point(500,600)
$button14.ForeColor = [System.Drawing.Color]::Green
$button14.Font = "Microsoft Sans Serif,15,style=Bold"
$button14.Add_Click(
   {   
   $label14.Text = snmpget -Os -c public -v 1 14.7.121.156 1.3.6.1.2.1.1.5.0
   
}
)
$Form.controls.Add($button14)


###########SYSTEM CONTACT 2

$label15 = New-Object system.windows.Forms.Label
$label15.Text = "SysContact"
$label15.AutoSize = $true
$label15.Width = 250
$label15.Height = 25
$label15.location = new-object system.drawing.point(500,125)
$label15.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label15)

$button15 = New-Object system.windows.Forms.Button
$button15.Text = "GetSysConatct"
$button15.Width = 190
$button15.Height = 40
$button15.location = new-object system.drawing.point(500,700)
$button15.ForeColor = [System.Drawing.Color]::Green
$button15.Font = "Microsoft Sans Serif,15,style=Bold"
$button15.Add_Click(
   {   
   $label15.Text = snmpget -Os -c public -v 1 14.7.121.156 1.3.6.1.2.1.1.4.0
   
}
)
$Form.controls.Add($button15)

##########SYSTEM SERVICES 2

$label16 = New-Object system.windows.Forms.Label
$label16.Text = "SysServices"
$label16.AutoSize = $true
$label16.Width = 250
$label16.Height = 25
$label16.location = new-object system.drawing.point(500,150)
$label16.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label16)

$button16 = New-Object system.windows.Forms.Button
$button16.Text = "GetSysServices"
$button16.Width = 190
$button16.Height = 40
$button16.location = new-object system.drawing.point(500,800)
$button16.ForeColor = [System.Drawing.Color]::Green
$button16.Font = "Microsoft Sans Serif,15,style=Bold"
$button16.Add_Click(
   {   
   $label16.Text = snmpget -Os -c public -v 1 14.7.121.156 1.3.6.1.2.1.1.7.0
   
}
)
$Form.controls.Add($button16)


##############END OF DEVICE 2 PARAMETERS



#####DEVICE 1 PARAMETERS

$label29 = New-Object system.windows.Forms.Label
$label29.Text = "DEVICE 1"
$label29.AutoSize = $true
$label29.Width = 250
$label29.Height = 10
$label29.ForeColor = [System.Drawing.Color]::Magenta
$label29.location = new-object system.drawing.point(3,3)
$label29.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label29)

######UPTIME 1

$label3 = New-Object system.windows.Forms.Label
$label3.Text = "UpTime1"
$label3.AutoSize = $true
$label3.Width = 250
$label3.Height = 25
$label3.location = new-object system.drawing.point(3,25)
$label3.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label3)

$label5 = New-Object system.windows.Forms.Label
$label5.Text = "STATUS"
$label5.BackColor = "#f10741"
$label5.AutoSize = $true
$label5.Width = 35
$label5.Height = 15
$label5.location = new-object system.drawing.point(150,220)
$label5.Font = "Microsoft Sans Serif,12,style=Bold"
$Form.controls.Add($label5)

$button3 = New-Object system.windows.Forms.Button
$button3.Text = "GetUptime"
$button3.Width = 190
$button3.Height = 40
$button3.location = new-object system.drawing.point(3,300)
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


##########OBJECT ID 1

$label1 = New-Object system.windows.Forms.Label
$label1.Text = "SysObJectID"
$label1.AutoSize = $true
$label1.Width = 250
$label1.Height = 25
$label1.location = new-object system.drawing.point(3,50)
$label1.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($label1)

$button1 = New-Object system.windows.Forms.Button
$button1.Text = "GetSysObjectID"
$button1.Width = 190
$button1.Height = 40
$button1.location = new-object system.drawing.point(3,400)
$button1.ForeColor = [System.Drawing.Color]::Blue
$button1.Font = "Microsoft Sans Serif,15,style=Bold"
$button1.Add_Click(
   {   
   $label1.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.2.0
   
}
)
$Form.controls.Add($button1)

##############SYSTEM DESCRIPTION 1

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
$button2.location = new-object system.drawing.point(3,500)
$button2.ForeColor = [System.Drawing.Color]::Blue
$button2.Font = "Microsoft Sans Serif,15,style=Bold"
$button2.Add_Click(
   {   
   $label2.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.1.0
   
}
)
$Form.controls.Add($button2)

########SYSTEM NAME 1

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
$button6.location = new-object system.drawing.point(3,600)
$button6.ForeColor = [System.Drawing.Color]::Blue
$button6.Font = "Microsoft Sans Serif,15,style=Bold"
$button6.Add_Click(
   {   
   $label6.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.5.0
   
}
)
$Form.controls.Add($button6)

###########SYSTEM CONTACT 1

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
$button7.location = new-object system.drawing.point(3,700)
$button7.ForeColor = [System.Drawing.Color]::Blue
$button7.Font = "Microsoft Sans Serif,15,style=Bold"
$button7.Add_Click(
   {   
   $label7.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.4.0
   
}
)
$Form.controls.Add($button7)

##########SYSTEM SERVICES 1

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
$button8.location = new-object system.drawing.point(3,800)
$button8.ForeColor = [System.Drawing.Color]::Blue
$button8.Font = "Microsoft Sans Serif,15,style=Bold"
$button8.Add_Click(
   {   
   $label8.Text = snmpget -Os -c public -v 1 14.20.16.50 1.3.6.1.2.1.1.7.0
   
}
)
$Form.controls.Add($button8)

###############END OF DEVICE 1


[void]$Form.ShowDialog()
$Form.Dispose()

}

#######function to open two forms on clicking a button
################
##############
################
#################################

Function Generate-Form {

    Add-Type -AssemblyName System.Windows.Forms    
    Add-Type -AssemblyName System.Drawing
    
    # Build Form
    $Form = New-Object System.Windows.Forms.Form
    $Form.Text = "PARAMETER CALC"
    $Form.Size = New-Object System.Drawing.Size(400,400)
    $Form.StartPosition = "CenterScreen"
    $Form.Topmost = $True

    # Add Button
    $Button = New-Object System.Windows.Forms.Button
    $Button.Location = New-Object System.Drawing.Size(150,150)
    $Button.Size = New-Object System.Drawing.Size(120,23)
    $Button.Text = "Click to Continue"

    $Form.Controls.Add($Button)

    #Add Button event 
    $Button.Add_Click($Button_Click)
    $form.ShowDialog()| Out-Null 

 } #End Function 

 #Call the Function 
Generate-Form
