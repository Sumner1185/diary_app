# Diary App

The diary app is a basic web based application that allows the user to add, store and read their diary entries online. 

## User Stories

## Must Haves:
```
As a user
So that I can keep a daily diary
I want to be able to add a new Diary Entry
```
```
As a user
So that I can identify my entry in future
I want to give each Diary Entry a title
```
```
As a user
So that I can browse my previous entries
I want to see a list of Diary Entry Titles
```
```
As a user
So that I can read my previous entries
I want to click on a title to see the full Diary Entry
```

## Initial Domain Model Diagrams

### Add Entry:
<p align="center">
<img src=/images/add_entry_model.svg width=50%>
</p><br><br>

### View Entries:
<p align="center">
<img src=/images/diagram.svg width=50%>
</p><br><br>

## Instructions For Database Setup

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE diary_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `create_diary_entry_table.sql`
