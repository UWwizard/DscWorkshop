configuration MyFirstConfig
{
    node localhost
    {
        File Folder1
        {
            DestinationPath = 'C:\TestFolder'
            Type = 'Directory'
            Ensure = 'Present'
        }

        File File1
        {
            DestinationPath = 'C:\TestFolder\TestFile1'
            Ensure = 'Present'
            DependsOn = '[File]Folder1'
            Type = 'File'
            Contents = 'Hello World'
        }
    }
}

MyFirstConfig -OutputPath C:\DSC
