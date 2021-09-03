﻿#region Features
# Remove diagnostics tracking scheduled tasks
Unregister-ScheduledTask OfficeTelemetryAgentFallBack2016, OfficeTelemetryAgentLogOn2016 -Confirm:$false -ErrorAction Ignore

# Do not send additional diagnostic and usage data to Microsoft
# Выключить необязательные сетевые функции
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\Common\ClientTelemetry -Name SendTelemetry -PropertyType DWord -Value 3 -Force

# Disable LinkedIn features in Office applications
if (-not (Test-Path -Path HKCU:\Software\Microsoft\Office\16.0\Common\LinkedIn))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Common\LinkedIn -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Common\LinkedIn -Name OfficeLinkedIn -PropertyType DWord -Value 0 -Force

<# Turn off the cloud features
if (-not (Test-Path -Path HKCU:\Software\Microsoft\Office\16.0\Common\SignIn))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Common\SignIn -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Common\SignIn -Name SignInOptions -PropertyType DWord -Value 3 -Force
#>

# Turn on Touch/Mouse Mode
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Common -Name OverridePointerMode -PropertyType DWord -Value 2 -Force
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Common -Name OverrideTabletMode -PropertyType DWord -Value 1 -Force
#endregion Features

#region Word
# Do not show the Start screen when application starts
if (-not (Test-Path -Path HKCU:\Software\Microsoft\Office\16.0\Word\Options))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Word\Options -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Word\Options -Name DisableBootToOfficeStart -PropertyType DWord -Value 1 -Force

# Do not open e-mail attachments and other uneditable files in reading view
# New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Word\Options -Name AllowAutoReadingMode -PropertyType DWord -Value 0 -Force

<# Disable Protected View for files originating from the Internet
if (-not (Test-Path HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView -Name DisableInternetFilesInPV -PropertyType DWord -Value 1 -Force

# Disable Protected View for files located in potentially unsafe locations
if (-not (Test-Path HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView -Name DisableUnsafeLocationsInPV -PropertyType DWord -Value 1 -Force

# Disable Protected View for Word attachments
if (-not (Test-Path HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Word\Security\ProtectedView -Name DisableAttachmentsInPV -PropertyType DWord -Value 1 -Force
#>

# Show the ruler
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Word\Options -Name Ruler -PropertyType DWord -Value 1 -Force

# Save AutoRecover information every 3 minutes
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Word\Options -Name AutosaveInterval -PropertyType DWord -Value 3 -Force

# Enable the "Draw" tab
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Word\Options -Name DrawInkTab -PropertyType DWord -Value 1 -Force

# Enable the "Developer" tab
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Word\Options -Name DeveloperTools -PropertyType DWord -Value 1 -Force
#endregion Word

#region Excel
# Do not show the Start screen when application starts
if (-not (Test-Path -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Options))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Options -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Options -Name DisableBootToOfficeStart -PropertyType DWord -Value 1 -Force

<# Do not open e-mail attachments and other uneditable files in reading view
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Options -Name AllowAutoReadingMode -PropertyType DWord -Value 0 -Force

# Disable Protected View for files originating from the Internet
if (-not (Test-Path HKCU:\Software\Microsoft\Office\16.0\Excel\Security\ProtectedView))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Security\ProtectedView -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Security\ProtectedView -Name DisableInternetFilesInPV -PropertyType DWord -Value 1 -Force

# Disable Protected View for files located in potentially unsafe locations
if (-not (Test-Path HKCU:\Software\Microsoft\Office\16.0\Excel\Security\ProtectedView))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Security\ProtectedView -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Security\ProtectedView -Name DisableUnsafeLocationsInPV -PropertyType DWord -Value 1 -Force

# Disable Protected View for Excel attachments
if (-not (Test-Path HKCU:\Software\Microsoft\Office\16.0\Excel\Security\ProtectedView))
{
	New-Item -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Security\ProtectedView -Force
}
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Security\ProtectedView -Name DisableAttachmentsInPV -PropertyType DWord -Value 1 -Force
#>

# Save AutoRecover information every 3 minutes
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Options -Name AutoRecoverTime -PropertyType DWord -Value 3 -Force

# Enable the "Draw" tab
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Options -Name DrawInkTab -PropertyType DWord -Value 1 -Force

# Enable the "Developer" tab
New-ItemProperty -Path HKCU:\Software\Microsoft\Office\16.0\Excel\Options -Name DeveloperTools -PropertyType DWord -Value 1 -Force
#endregion Excel