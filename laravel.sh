Artisan
== reset table database
php artisan migrate:reset

== create table to database
php artisan migrate

== isi table database
php artisan db:seed

== refresh migrate + seed
php artisan migrate:refresh --seed

== migrate + seed
php artisan migrate --seed

== versi laravel
php artisan -v

== list function artisan
php artisan list

== make migrate
php artisan migrate:make (nama migrate)

Composer
== compile composer.phar
php composer.phar dump-autoload 

Unit Test
== run all
phpunit

== run file
phpunit app/tests/NameFileTest.php