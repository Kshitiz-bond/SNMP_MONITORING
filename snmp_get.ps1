####how to get the basic value of parameter

$a = "14.20.16.50"

Foreach ($i in $d)

{

snmpget -Os -c public -v 1 $($i) 1.3.6.1.2.1.1.3.0 
}

####snmpwalk can also be used but snmpget is preferred.