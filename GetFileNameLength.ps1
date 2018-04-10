# Lists all files (recursively) and displays the file name and the length of the file name.
# Can be piped to Export-CSV if desired

Get-ChildItem -Recurse -ErrorAction SilentlyContinue | select -Property FullName, @{n="NameLength";e={$PSItem.FullName.Length}}
