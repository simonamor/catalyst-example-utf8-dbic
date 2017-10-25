Run script/dbwithutf8_server.pl to test the application.

This assumes a MySQL database called 'utf8db' is already created, with 'all'
permissions granted to 'utf8db_user'@'localhost' identified by 'utf8db_pass'

mysql> CREATE DATABASE utf8db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

