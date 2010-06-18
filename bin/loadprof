#!/usr/bin/env python
"""
Load and print hotshot stats from a file.
Usage:

    python load_prof.py <file>

Prints out the top 20 functions, sorted by call time and number
of calls.

    ipython load_prof.py <file>

Does the same as above, but drops you into an IPython shell with
the file loaded in ``stats`` so you can play with it more.
"""
import hotshot.stats
import sys

stats = hotshot.stats.load(sys.argv[1])
stats.sort_stats('time', 'calls')
stats.print_stats(20)
