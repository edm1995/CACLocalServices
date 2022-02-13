# remove old local service user

$acl = Get-Acl HKLM:\SOFTWARE\Microsoft\Cryptography\Calais

foreach ($access in $acl.Access){
	if ($access.IdentityReference.Value -eq "NT AUTHORITY\LOCAL SERVICE") {
		$acl.RemoveAccessRule($access) | Out-Null
	}
}

$acl | Set-Acl -Path HKLM:\SOFTWARE\Microsoft\Cryptography\Calais

# add correct local service user

$acl = Get-Acl HKLM:\SOFTWARE\Microsoft\Cryptography\Calais

$rule = New-Object System.Security.AccessControl.RegistryAccessRule ("LOCAL SERVICE", "QueryValues,SetValue,CreateSubKey,EnumerateSubKeys,Notify,Delete,ReadKey", "Allow")

$acl.SetAccessRule($rule)

$acl | Set-Acl -Path HKLM:\SOFTWARE\Microsoft\Cryptography\Calais