# Create directories if they don't exist
$directories = @(
    "assets\images\team",
    "assets\images\services",
    "assets\images\achievements",
    "assets\images\projects",
    "assets\videos\projects"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force
    }
}

# Download sample images
$imageUrls = @{
    "assets\images\logo.png" = "https://placehold.co/200x50/8B0000/FFD700/png?text=SUTHERSON"
    "assets\images\hero-bg.jpg" = "https://placehold.co/1920x1080/8B0000/FFD700/jpg?text=Hero+Background"
    "assets\images\about-bg.jpg" = "https://placehold.co/1920x1080/FFD700/8B0000/jpg?text=About+Background"
    
    # Team member photos
    "assets\images\team\member1.jpg" = "https://placehold.co/400x400/8B0000/FFD700/jpg?text=Team+Member+1"
    "assets\images\team\member2.jpg" = "https://placehold.co/400x400/FFD700/8B0000/jpg?text=Team+Member+2"
    "assets\images\team\member3.jpg" = "https://placehold.co/400x400/8B0000/FFD700/jpg?text=Team+Member+3"
    "assets\images\team\member4.jpg" = "https://placehold.co/400x400/FFD700/8B0000/jpg?text=Team+Member+4"
    
    # Service icons
    "assets\images\services\icon1.svg" = "https://placehold.co/64x64/8B0000/FFD700/svg?text=Service+1"
    "assets\images\services\icon2.svg" = "https://placehold.co/64x64/FFD700/8B0000/svg?text=Service+2"
    "assets\images\services\icon3.svg" = "https://placehold.co/64x64/8B0000/FFD700/svg?text=Service+3"
    "assets\images\services\icon4.svg" = "https://placehold.co/64x64/FFD700/8B0000/svg?text=Service+4"
    
    # Achievement icons
    "assets\images\achievements\icon1.svg" = "https://placehold.co/48x48/8B0000/FFD700/svg?text=Achievement+1"
    "assets\images\achievements\icon2.svg" = "https://placehold.co/48x48/FFD700/8B0000/svg?text=Achievement+2"
    "assets\images\achievements\icon3.svg" = "https://placehold.co/48x48/8B0000/FFD700/svg?text=Achievement+3"
    "assets\images\achievements\icon4.svg" = "https://placehold.co/48x48/FFD700/8B0000/svg?text=Achievement+4"
    
    # Project images
    "assets\images\projects\project1.jpg" = "https://placehold.co/800x600/8B0000/FFD700/jpg?text=Project+1"
    "assets\images\projects\project2.jpg" = "https://placehold.co/800x600/FFD700/8B0000/jpg?text=Project+2"
    "assets\images\projects\project3.jpg" = "https://placehold.co/800x600/8B0000/FFD700/jpg?text=Project+3"
}

# Download images
foreach ($image in $imageUrls.GetEnumerator()) {
    $outputPath = $image.Key
    $url = $image.Value
    Write-Host "Downloading $outputPath..."
    Invoke-WebRequest -Uri $url -OutFile $outputPath
}

# Create sample video files (empty files for now)
$videoFiles = @(
    "assets\videos\hero-bg.mp4",
    "assets\videos\about-bg.mp4",
    "assets\videos\projects\project1.mp4",
    "assets\videos\projects\project2.mp4",
    "assets\videos\projects\project3.mp4"
)

foreach ($video in $videoFiles) {
    if (-not (Test-Path $video)) {
        New-Item -ItemType File -Path $video -Force
        Write-Host "Created placeholder for $video"
    }
}

Write-Host "Asset download complete!" 