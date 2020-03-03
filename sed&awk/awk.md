# awk

1. More like a programming language
2. Used more as a query langauge
3. Has statements and functions.
4. Interprets each input line as record and each word on the line. 
5. Delimited by space/tabs/fields or any user defaults.

```bash
$0 - Represent entire input line
$1 - First field
$2 - Second field after 1st delimiter
```

### Options/Flags

```bash
-f  - Filename of script follows
-F 	- Change field separator. Delimiter
-v  - var=value follows
```



### Syntax

```bash
awk 'instructions' files
```

Instructions must be enclosed in single quotes to protect from shell. [Instructions ${} which are shell special characters]

### Awk scripts

Awk programs are placed in files to be tested and modified.

```bash
awk -f script files
```

### Examples

```bash
awk '{ print $1 }' list - print first field
```

``` bash
awk '/MA/' list - print line that match patterns by default
```

```bash
awk -F, '/MA { print $1}' list - change delimiter to comma(,)
```

```bash
awk -F, '{print $1; print $2; print $3 }' list - print fields on own line separated by semicolons(;)
```

### Awk Ternary

```bash
awk 'ORS=NR%2?";":"\n"' student-marks

CONCETENATE LINE 1 TO LINE 2 DELIMITED BY SEMICOLON(;)

LINE 1 , SEMI COLON;
LINE 2 , NEW LINE
```

### References

[Conditionals](https://www.thegeekstuff.com/2010/02/awk-conditional-statements/)

[Built-in vars](https://www.thegeekstuff.com/2010/01/8-powerful-awk-built-in-variables-fs-ofs-rs-ors-nr-nf-filename-fnr/)

