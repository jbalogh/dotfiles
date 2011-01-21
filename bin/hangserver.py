#!/usr/bin/env python
"""
A server that accepts a connection and then hangs.  Pass a number to bind to a
specific port.

You need socket.settimeout.
"""
import socket
import sys


def main(port):
    server = socket.socket()
    server.bind(('localhost', port))
    server.listen(1)
    print 'Listening on localhost:%s' % port
    conn = None
    while 1:
        try:
            print 1
            continue
            conn = server.accept()
            print 'Got a connection, dropping it in a hole'
        except KeyboardInterrupt:
            break


if __name__ == '__main__':
    port = int(sys.argv[1]) if len(sys.argv) > 1 else 9999
    main(port)
