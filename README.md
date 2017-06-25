Yet Another Blog
========================

Symfony project with Sonata Admin Bundle & FOSUser Bundle / Sonata User Bundle

### Installing

Run this command for install dependencies

```
composer install
```

And run the two following commands for generate sonata security :

```
php bin/console sonata:admin:setup-acl
php bin/console sonata:admin:generate-object-acl
```