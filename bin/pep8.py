#!/home/jeff/src/basie/bin/python

import sys
sys.path[0:0] = [
  '/home/jeff/.buildout/eggs/ipython-0.9.1-py2.5.egg',
  '/home/jeff/.buildout/eggs/nose-0.10.3-py2.5.egg',
  '/home/jeff/src/basie/basierecipe',
  '/home/jeff/.buildout/eggs/pyflakes-0.2.1-py2.5.egg',
  '/home/jeff/.buildout/eggs/zc.recipe.egg-1.1.0-py2.5.egg',
  '/home/jeff/.buildout/eggs/zc.buildout-1.1.1-py2.5.egg',
  '/home/jeff/.buildout/eggs/setuptools-0.6c8-py2.5.egg',
  ]

import basierecipe.pep8

if __name__ == '__main__':
    basierecipe.pep8._main()
