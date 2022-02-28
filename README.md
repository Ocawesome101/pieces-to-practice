# Pieces to Practice

A simple practice app intended for marking music practice.  Run `ptp help` for usage information.

Requires LuaPosix.

Stores practice data in `~/.piecestopractice`:

  - `~/.piecestopractice/assignments/` stores assignment files.  Subdirectories are practice lists.

  - `~/.piecestopractice/days/` stores each day's practiced items in a subdirectory in ISO 8601 date format, e.g. `~/.piecestopractice/days/2022-02-27`.  Each item stores the time practiced in seconds on the first line and the rating of how you think you did (from 1-10) on the second.
