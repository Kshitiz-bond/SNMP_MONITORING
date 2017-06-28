$Button_Click = 
{
    [System.Windows.Forms.MessageBox]::Show("Hello World.", "My Dialog Box")
}

$Button_Click1 = 
{
    [System.Windows.Forms.MessageBox]::Show("Hello kshitiz.", "My Dialog Box")
}

Function Generate-Form {

    Add-Type -AssemblyName System.Windows.Forms    
    Add-Type -AssemblyName System.Drawing
    
    # Build Form
    $Form = New-Object System.Windows.Forms.Form
    $Form.Text = "My Form"
    $Form.Size = New-Object System.Drawing.Size(300,300)
    $Form.StartPosition = "CenterScreen"
    $Form.Topmost = $True

    # Add Button
    $Button = New-Object System.Windows.Forms.Button
    $Button.Location = New-Object System.Drawing.Size(35,35)
    $Button.Size = New-Object System.Drawing.Size(120,23)
    $Button.Text = "Show Dialog Box"

    $Form.Controls.Add($Button)

    # Add Button
    $Button1 = New-Object System.Windows.Forms.Button
    $Button1.Location = New-Object System.Drawing.Size(100,100)
    $Button1.Size = New-Object System.Drawing.Size(120,23)
    $Button1.Text = "Show text Box"
     $Button1.Add_Click($Button_Click1)

    $Form.Controls.Add($Button1)

    #Add Button event 

    $Button.Add_Click($Button_Click)
         #Show the Form 
    $form.ShowDialog()| Out-Null 

 } #End Function 

 #Call the Function 
Generate-Form