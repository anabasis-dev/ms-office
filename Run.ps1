echo "Office Deploy Script @tpa"
$config=@{
  Branch:=""
  Channel=""
  Components=""
}

$components = `
  "Word", 
  "Excel", 
  "PowerPoint", 
  "Outlook"
  
$branch='ProPlus2021Retail'

.\Download.ps1 -Branch $branch -Channel Current -Components $components

