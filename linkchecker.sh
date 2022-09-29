echo "Broken links: "
for f in `grep -ho "www[^ }]*" chapters/*tex localbibliography.bib`;  do wget --spider  $f; done 2>&1 >/dev/null | grep -B 3 "404 Not"|grep -- --
