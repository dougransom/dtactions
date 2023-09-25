# dtactions

dtactions is an OpenSource extension module for the speech recognition program Dragon.
It is meant to perform actions that are common to other packages like Dragonfly, Unimacro and Vocola.

This document describes how to install dtactions for end users and for developers.

## Status

dtactions code has been updated from Python 2 to Python 3. It is experimental at this moment (and will remain for quite a while probably). Some modules are used more frequently, especially `sendkeys.py`.

You can `pip install dtactions` manually.

## Instructions for End Users

Normally dtactions is installed via pip when you install the package (Dragonfly, Caster, Unimacro, Vocola) that uses dtactions. At the moment, mainly Vocola and Unimacro use dtactions.

## Instructions for Developers

Your local git repository can be anywhere convenient. 

Uninstall the packages you wish to develop. i.e pip if you want to work on dtactions:
  `py -m pip uninstall dtactions` and answer yes to all the questions about removing files from your python scripts folder.

Run `py -m pip install -e .`  from the dtactions project root.  


### Unit testing
Run pytest to run the tests, written in a combinatin of [unittest](https://docs.python.org/3/library/unittest.html) 
and [pytest](https://docs.pytest.org/).  IF adding a test, pytest seems to be a lot more convenient and powerful.

Most tests go in test;  tests that require a natlink install go in natlink_test as not every package dependent on natlink.  

You can run `py -m pip install dtactions[test]` or `py -m pip install dtactions[natlink_test]` if you don't have the prequisites like pytest.  

You can run pytest from project root folder to run the tests that don't depend on natlink being installed.  For the natlink-dependent tests, run 
`py -m pytest natlink_test`.  

## Notes About Packaging for Developers

The package is specified in `pyproject.toml` and built with [flit](https://pypi.org/project/flit/). The build_package command
(a batch file in the root folder of dtactions) builds a source distribution.

`py -m flit build` builds the package.  `py -m flit publish` publishes to [Python Packaging Index](https://pypi.org/).


 
Version numbers of the packages must be increased before your publish to [Test Python Packaging Index](https://test.pypi.org/)
or . These are specified in **init**.py in `src/dtactions`. Don't bother changing the
version numbers unless you are publishing.

If you are going to publish to a package index, you will need a .pypirc in your home directory. If you don't have one,
it is suggested you start with pypirc_template as the file format is rather finicky.
