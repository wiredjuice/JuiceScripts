# Function to stop the application
function Stop-Application {
    # Add your code here to stop or exit the application
    Stop-Process -Name "FileZilla Server" -Force
    Write-Host "Stopping the application..."
}

# Function to start the application
function Start-Application {
    # Add your code here to start the application
    Write-Host "Starting the application..."
    Start-Process -FilePath "E:\Program Files (x86)\FileZilla Server\FileZilla Server Interface.exe"
}

# List of services to restart
$servicesToRestart = @("ISMMonitorService","RCM","FTPPollServiceInHouse")

# Stop the application
Stop-Application

# Iterate through each service and restart it
foreach ($service in $servicesToRestart) {
    try {
        # Stop the service
        Stop-Service -Name $service -ErrorAction Stop
        
        # Wait for a moment (adjust this value according to your needs)
        Start-Sleep -Seconds 10
        
        # Start the service
        Start-Service -Name $service -ErrorAction Stop
        
        Write-Host "Service $service restarted successfully."
    } catch {
        Write-Host "Failed to restart service $service. $_"
    }
}

# Start the application
Start-Application
