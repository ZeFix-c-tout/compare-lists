# compare-lists
This batch script compares two lists and checks the correspondence between them.

USAGE:

The script analyzes two .txt files and reports any differences in a generated log.txt file.

In both text files (`liste1.txt` and `liste2.txt`), make sure to add an empty line at the end.  
If the last line is not empty, it will be detected as an error.

Each comparison element must be on its own line.  
Do not place multiple values on the same line, otherwise the comparison will fail.

Every time the script is executed, the previous log.txt file is automatically deleted.

Extra spaces on a line are taken into account and may be interpreted as differences.

A double verification is performed using the variables `%t1%` and `%t2%`:  
- `liste1.txt` is compared to `liste2.txt`  
- and `liste2.txt` is compared back to `liste1.txt`

If the files `liste1.txt` or `liste2.txt` do not exist, the script automatically creates them.
