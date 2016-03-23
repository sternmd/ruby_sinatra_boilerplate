CREATE DATABASE first_crud;
\c first_crud
CREATE TABLE accounts (id SERIAL PRIMARY KEY, name VARCHAR(255), email VARCHAR(255), password_hash VARCHAR(255));
CREATE TABLE carts (id SERIAL PRIMARY KEY, product_name VARCHAR(255), quantity DECIMAL, price integer);
CREATE TABLE teams (id SERIAL PRIMARY KEY, team_name VARCHAR(255), state VARCHAR(255), sport VARCHAR(255));
CREATE TABLE books (id SERIAL PRIMARY KEY, title VARCHAR(255), author VARCHAR(255), genre VARCHAR(255));
CREATE TABLE apps (id SERIAL PRIMARY KEY, name VARCHAR(255), author VARCHAR(255), version integer);
