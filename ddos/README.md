# Use for testing DDOS attack protection

### Siege https://www.joedog.org/siege-manual/
````
sh siege.sh
````
Must be failed.

````
php ddos/slowloris.php get 50 localhost:8088/admin/login
````
See nginx logs http 408 (timeout).
