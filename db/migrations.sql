CREATE DATABASE first_crud;
\c first_crud
CREATE TABLE accounts (id SERIAL PRIMARY KEY, name VARCHAR(255), email VARCHAR(255), password_hash VARCHAR(255));
CREATE TABLE carts (id SERIAL PRIMARY KEY, product_name VARCHAR(255), quantity DECIMAL, price integer);
CREATE TABLE profiles (id SERIAL PRIMARY KEY, name VARCHAR(255), profile_about VARCHAR(255), age integer);
