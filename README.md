Lifetime: Calculates Playtime (by number of game ticks)

creates the following scoreboards:

  - `lt_ticks` number of times incremented, resets at `#lifetime_global`'s `lt_tickrate`
  - `lt_tickrate`, on the #lifetime_global pseudoplayer, is the number of expected increments per second (defaults to 20)
  - `lt_seconds` number of times `lt_ticks` has hit `#lifetime_global`'s `lt_tickrate`, resets at 60
  - `lt_minutes` number of times seconds has hit 60, resets at 60
  - `lt_hours` number of times minutes has hit 60
  - `lt_quick` an at-a-glance summary of hours, minutes, and seconds (eg: 10233 would mean "1hr 2m 33s")
  - `lt_pad` (ignore, used for internal calculations)

usage:
  - automatically tracks time for any player with the tag `lt_increment`
  - or manually tick the time via `function lifetime:increment` (be sure the `lt_tickrate` is appropriate if used)
  - output the hours, minutes, seconds as appropriate (see the `lifetime:title` function for an example)
  - or `setdisplay` the `lt_quick` scoreboard for an at-a-glance summary of the time
