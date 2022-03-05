# Pieces to Practice

A simple practice app intended for marking music practice.  Run `ptp help` for usage information.

Requires LuaPosix. GUI requires wxlua (available as `wxlua-git` from the AUR).

Stores practice data in `~/.piecestopractice`:

  - `~/.piecestopractice/assignments/` stores assignment files.  Subdirectories are practice lists.  Each assignment file's name is the ID of that assignment, and it contains the assignment's long name.

  - `~/.piecestopractice/days/` stores each day's practiced items in a subdirectory in ISO 8601 date format, e.g. `~/.piecestopractice/days/2022-02-27`.  Each item stores the time practiced in seconds on the first line and the rating of how you think you did (from 1-10) on the second.

Sample usage:

```
$ ptp add-assignment "Dvořák - Humoresque No. 7"
189794
$ ptp add-assignment "Neil Moore - A Friend in Time"
444058
$ ptp add-assignment "Ludovico Einaudi - Nuvole Bianche"
164051
$ ptp list all
444058  Neil Moore - A Friend in Time
164051  Ludovico Einaudi - Nuvole Bianche
189794  Dvořák - Humoresque No. 7
$ ptp practice 189784
when done, enter a score between 1-10 and press ENTER
8
$ ptp list days
2022-02-28
$ ptp list practiced
189794  Dvořák - Humoresque No. 7       00:03:17        8
$ ptp get-streak
1
```

# Web Interface

#### DO NOT RUN THE WEB SERVER ON A PUBLICLY ACCESSIBLE COMPUTER. IT IS NOT SECURE, DOES NOT USE HTTPS, AND HAS NO AUTHENTICATION WHATSOEVER.

Run `sudo env HOME=$HOME ./ws.lua` from the repository root to start a web interface on `localhost`.  [Access it though your browser here.](http://localhost)  Most `ptp` functionality should be available through this interface.
