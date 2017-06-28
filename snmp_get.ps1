$a = "14.20.16.50"


$d = $a

Foreach ($i in $d)

{

snmpget -Os -c public -v 1 $($i) 1.3.6.1.2.1.1.3.0 
}