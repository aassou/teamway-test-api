# Teamway Personality Test: API

This is a Symfony API Platform project (Personality Test).

You can find a live link on Heroku:
https://teamway-api.herokuapp.com/

OpenAPI link:
https://teamway-api.herokuapp.com/api

## Requirements
    - PHP 8.0.5 Or above.
    - MySQl
## Getting Started
### 1. Clone the project
```bash
# Clone this repository
$ git clone https://github.com/aassou/teamway-test-api.git

# Go into the repository
$ cd teamway-test-api

```

### 2. Install the dependencies
Install dependencies using composer

```bash
$ composer install
```

### 3. Create env file

Create an env file with the name ".env.local" and copy the content of ".env" to it.
Then in your .env.local file change the database credentials with your ones:
<br />
```bash
mysql://username:password@127.0.0.1:3306/database_name?serverVersion=5.7
```

###4. Database creation:

Create the database by running the next command:

```bash
$ php bin/console doctrine:database:create
```

### 5. Create and Run Migrations
```bash
# Create migration
$ php bin/console make:migration

# Run migration
$ php bin/console doctrine:migrations:migrate

### 6. Load some data 
You can load some data using fixtures or use the sql file attached to the project
```bash
# Using Fixtures
$ php bin/console hautelook:fixtures:load

# Using database_schema
Please dump the database schema and data in file database_schema.sql


```
### 7. Start the server

```bash
$ symfony serve
```





