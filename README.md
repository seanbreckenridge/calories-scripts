# calories-fzf

Scripts for interacting with [`calories`](https://github.com/zupzup/calories)

These are up here incase anyone wants to try hacking on them, I don't expect to update/use these anymore as I've replaced this with [ttally](https://github.com/purarue/ttally)

### calfzf

A [`fzf`](https://github.com/junegunn/fzf) interface to , to add something you've eaten in the past again.

![](https://raw.githubusercontent.com/purarue/calories-fzf/master/demo.gif)

As you add more things to calories using `calories add <cal> '<name>'`, this picks them up using `calories export`.

### calswap

Swaps the current calories database (by updating your `$GOBIN/.caloriesconf` file) to another database. If the path doesn't exist, it copies the currently active database, along with all the data

### calmerge

Note: creates a backup of your current database before modifying anything

Merges multiple 'calories' databases together.

Merges entries and weights from the current and any
database(s) passed as arguments, removing
duplicate entries. The resulting entries are imported
into the currently active database, using 'calories import'

For food, a duplicate is determined by using the following:

`(created, entryDate, calories, food)`

i.e., ignoring the bmr/amr, since those may differ based on
inconsistencies between weights on different databases

For weight duplicates are determined using:

`(created, weight)`

ids may change during the merge process

```
usage: calmerge [-h] [-d] CALORIES_DATABASE [CALORIES_DATABASE ...]

positional arguments:
  CALORIES_DATABASE  One or more calories databases to use as input

optional arguments:
  -h, --help         show this help message and exit
  -d, --debug        Increase log verbosity
```

## Install

Dependencies: `bash`, `python3.6+`

You could install each of the scripts manually onto your `$PATH`, or use the `Makefile`, which attempts to install them into `~/.local/bin`:

```
git clone https://github.com/purarue/calories-scripts
cd ./calories-scripts
make
```
