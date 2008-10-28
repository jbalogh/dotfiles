""" User configuration file for IPython

This is a more flexible and safe way to configure ipython than *rc files
(ipythonrc, ipythonrc-pysh etc.)

This file is always imported on ipython startup. You can import the
ipython extensions you need here (see IPython/Extensions directory).

Feel free to edit this file to customize your ipython experience.

Note that as such this file does nothing, for backwards compatibility.
Consult e.g. file 'ipy_profile_sh.py' for an example of the things
you can do here.

See http://ipython.scipy.org/moin/IpythonExtensionApi for detailed
description on what you could do here.
"""

# Most of your config files and extensions will probably start with this import

import IPython.ipapi
ip = IPython.ipapi.get()

#def magic_debug(self, name=''):
#    import unittest
#    unittest.TestLoader().loadTestsFromName(name).debug()
#
#def magic_l(self, x):
#    return [str(y) for y in x]
#
#from IPython.iplib import InteractiveShell
#InteractiveShell.magic_debug = magic_debug
#InteractiveShell.magic_l = magic_l
#del magic_debug
#del magic_l

def main():
    # Handy tab-completers for %cd, %run, import etc.
    # Try commenting this out if you have completion problems/slowness
    #import ipy_stock_completers

    o = ip.options
    o.confirm_exit = 0
    o.banner = 0
    o.log = 1
    o.system_verbose = 0
    # An example on how to set options
    #o.autocall = 1

main()
