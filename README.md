# Digdag Postgres

The `Digdag Postgres` project demonstrates how to use `SQL queries` with `digdag` and `embulk` open source libraries for automation of ingesting and analyzing data using a PostgreSQL database.

![GitHub repo size](https://img.shields.io/github/repo-size/hakkeray/digdag-postgres)
![GitHub license](https://img.shields.io/github/license/hakkeray/digdag-postgres?color=black)

## Prerequisites

Before you begin, ensure you have met the following requirements:

* You have a `<Windows/Linux/Mac>` machine.
* You have access to `sudo` privileges
* You have installed `Java` version 8
* You have `postgreSQL` installed and configured

For help installing and configuring Java and PostgreSQL, check out my blog post ![Digdag PostgreSQL Tutorial](https://www.hakkeray.com/datascience/2020/07/26/digdag-postgresql-tutorial.html).

## Running the Digdag Postgres project

Use `sudo` to get root privileges

```bash
$ sudo -s
```

### Install `digdag`

```bash
$ curl -o ~/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest"
$ chmod +x ~/bin/digdag
$ echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```

Check to make sure `digdag` is installed correctly:

```bash
$ digdag --help
```

### Install Embulk

```bash
$ curl --create-dirs -o ~/.embulk/bin/embulk -L "https://dl.embulk.org/embulk-latest.jar"
$ chmod +x ~/.embulk/bin/embulk
$ echo 'export PATH="$HOME/.embulk/bin:$PATH"' >> ~/.bashrc
$ source ~/.bashrc
```

### Install Plugins

```bash
$ embulk gem install embulk-input-postgresql
$ embulk gem install embulk-output-postgresql
```

### Run the Digdag PostgreSQL workflow

To run this project locally, follow these steps:

In the command line/terminal:

```bash
$ git clone https://github.com/hakkeray/digdag-postgres.git
$ cd digdag-to-postgres/embulk_to_pg
$ digdag run embulk_to_pg.dig -O log/task
```

*Note: If this isn't your first time running the workflow, use the --rerun flag:*

```bash
$ digdag run embulk_to_pg.dig --rerun -O log/task
```

# Contact
If you want to contact me you can reach me at rukeine@gmail.com.

# License
This project uses the following license: MIT License.

```
         _ __ _   _
  /\_/\ | '__| | | |
  [===] | |  | |_| |
   \./  |_|   \__,_|
```

