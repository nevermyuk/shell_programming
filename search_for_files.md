# find

```bash
find playground \( -type f -not -perm 0600 -exec chmod 0600 '{}' ';'  \) -or \( -type d -not -perm 0700 -exec chmod 0700 '{}' ';' \) 
```

1.  In playground directory
2. find normal file type that permission is not 0600 and 0700 
3. Change permission.

# locate

- locate performs a database search of pathnames and output matches.

- database is provided by updatedb - usually run periodically as a cron job by default in the system.

  ```bash
  locate zip
  ```

  

  # Regex

  ```bash
  $ grep -i '^..j.r$' /usr/share/dict/words
  
  ```

  