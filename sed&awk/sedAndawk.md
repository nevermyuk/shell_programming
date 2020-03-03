## Using sed and awk together

Piping

```bash
 sed -f nameState list | awk -F, '{print $4}' | sort | uniq -c
```

1. sed changes state abbreviation to full names with commas(,).
2. awk delimit with , and prints 4th field {the states}
3. sort will sort
4. uniq -c , count number of occurences