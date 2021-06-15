# logfile 2.0
# created by gergö szijarto 2021

cls

# declare variables such as folders or files
$path = "C:\temp\NewFolder"
$pathFile = $path + "\" + $name
$name = "file.txt"

# check if the file exists
If(!(test-path $pathFile))
{
      echo "logfile created"
      New-Item -Path $path -ItemType File -Name $name -Force # creates file if doesn't exist
} else {
      echo "logfile already exists" # message if it does already exist
}

# checks if directory already exists
If(!(test-path $path)){
      
      echo "dir created"
      New-Item -Path $path -ItemType Directory # creates directory if doesn't exist
} else {
      echo "dir already exists" # message if it does exist
}

Add-Content -Path $pathFile -Value (Get-Date) # writes current date and time into the file
echo "date added"

$userInput = Read-Host "enter a message to add to the file" # reads user input

Add-Content -Path $pathFile -Value $userInput # writes user input into the file

