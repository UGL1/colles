Get-ChildItem  . -recurse -include *.aux, *.log, *.out, *.synctex.gz, *.toc, *.nav, *.vrb, *.snm, *.pygtex, *.pygstyle| Remove-Item -Force -Verbose
Get-ChildItem . -include _minted*, __pycache__, .idea -Recurse -force | Remove-Item -Recurse -Force -Verbose

Get-ChildItem  . -hidden -recurse -include *DS_Store | Remove-Item -Force -Verbose
