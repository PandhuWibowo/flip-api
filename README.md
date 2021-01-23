# Flip Test

## Preparation - How to use

Clone the project via https or ssh or github cli

```
https://github.com/PandhuWibowo/flip-test.git
git@github.com:PandhuWibowo/flip-test.git
gh repo clone PandhuWibowo/flip-test
```

### Config

1. Create .env file in your project. You can see the value at **.env.example** file
2. Please fill **FLIP_SECRET**, **URL**, **DB_HOST**, **DB_NAME**, **DB_USERNAME**, **DB_PASSWORD**, and **DB_PORT** to your local


### Database

A database MySQL with name, and please to import the database to your local database

```bash
flip_technical_test.sql
```

### Install Environment

Run this script to install the project

```bash
npm install
```
**or**

```bash
npm i
```
### Start

Run this script to starting your project

```bash
npm run start
```

### Testing

Run this script to start API test

```bash
npm run start-test
```
