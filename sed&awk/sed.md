# sed

Short for Stream EDitor.

Process line by line.

Result is ephemeral

Does not modify input file unless -i flag is used.

### Flags/Options

```bash
-e , editing instructions follows

-f , filename of script follows.

-n, suppress automatic output of input lines.
```



### Syntax

```bash
sed [ -e OPTIONS/FLAGS ] ' instructions' filename
```

Replace all MA with Massachusetts

```bash
sed 's/MA/Massachusetts/' list 

```

Replace all MA with ', Massachusetts' - with comma and space.

```bash
sed 's/ MA/, Massachusetts/' list 
```



#### 3 way to specify multiple instructions on 1 line.

1.  With Semicolons.

   ```bash
   sed 's/CA/, California/; s/ VA/, Valley /' list
   ```

   

2. Add an -e infront of each instruction. (Precede each inst by -e)

   ```bash
   sed -e 's/CA/, California/' -e 's/ VA/, Valley/' list
   ```

   

3.  Use multiline entry capability of Bash - single quotes ''

   ```bash
   $ sed '
   > s/ MA/, Mountbatten/
   > s/ VA/, Valley/
   > s/ CA/, Cali/
   > s/ OK/, Okay/' list
   ```

   

### To use with a Script File

Used when multiple lines of scripts

```bash
cat sedscript

s/ MA/, Mountbatten/
s/ PA/, Primark/
s/ CA/, Carn/
s/ VA/, Valley/
s/ OK/, Oklor/

sed -f sedscript list
```

### Saving output 

Use I/O Redirection

```bash
sed -f sedscript list > newlist
```

### Suppress automatic print of input lines

Include -n flag

Include p command to print affected lines.

```bash
sed -n 's/MA/Mountbatten/p' list
```

