Remove-Item -Path C:\TestFolder\ -Recurse -Force
Remove-Item -Path C:\DSC\ -Recurse -Force
Remove-DscConfigurationDocument -Stage Current, Pending, Previous
