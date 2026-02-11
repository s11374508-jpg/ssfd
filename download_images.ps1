$images = @(
    @{Url='https://upload.wikimedia.org/wikipedia/commons/e/ea/Olesko_Castle_Aerial_2019_01.jpg'; Path='images\slide1.jpg'},
    @{Url='https://upload.wikimedia.org/wikipedia/commons/a/a6/Olesko_Castle_RB.jpg'; Path='images\slide2.jpg'},
    @{Url='https://upload.wikimedia.org/wikipedia/commons/5/55/Olesko_Castle_DPI-0097.jpg'; Path='images\slide3.jpg'},
    @{Url='https://upload.wikimedia.org/wikipedia/commons/c/cb/Olesko_castle.jpg'; Path='images\slide4.jpg'},
    @{Url='https://upload.wikimedia.org/wikipedia/commons/4/4e/80-391-0291_Olesko.jpg'; Path='images\slide5.jpg'}
)

foreach ($img in $images) {
    Write-Host "Downloading $($img.Url)..."
    try {
        Invoke-WebRequest -Uri $img.Url -OutFile $img.Path -UserAgent "Mozilla/5.0"
        Write-Host "Saved to $($img.Path)"
    } catch {
        Write-Error "Failed to download $($img.Url): $_"
    }
}
