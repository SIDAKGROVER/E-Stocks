# Define the file you want to modify (e.g., README.md)
$file = "info.txt"

# Loop 100 times to generate 100 commits
for ($i = 1; $i -le 100; $i++) {
    # Modify the file by adding a line (or make a small change)
    Add-Content $file "This is commit number $i"

    # Add the changes to the staging area
    git add $file

    # Commit the changes with a message
    git commit -m "Updated Project"

    # Push the changes to GitHub
    git push origin main

    # Wait for 3 seconds before the next commit
    Start-Sleep -Seconds 3
}
