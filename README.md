# calories-fzf

Scripts for interacting with [`calories`](https://github.com/zupzup/calories)

### calfzf

A [`fzf`](https://github.com/junegunn/fzf) interface to , to add something you've eaten in the past again.

![](https://raw.githubusercontent.com/seanbreckenridge/calories-fzf/master/demo.gif)

As you add more things to calories using `calories add <cal> '<name>'`, this picks them up using `calories export`.

### calswap

Swaps the current calories database (by updating your `$GOBIN/.caloriesconf` file to

## Install

Dependencies: `bash`, `python`

You could install each of the scripts manually onto your `$PATH`, or use the `Makefile`, which attempts to install them into `~/.local/bin`:

```
git clone https://github.com/seanbreckenridge/calories-scripts
cd ./calories-scripts
make
```
