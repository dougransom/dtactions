
.. _RefSendkeys:

sendkeys
========

The :code:`sendkeys` function sends keystrokes to the foreground window.

This replaces the :code:`natlink.playString` function of Natlink. 

At top of module insert:
    
:code:`from dtactions.sendkeys import sendkeys`

And then in the appropriate place in the code:

    :code:`sendkeys("keystrokes")`

sendkeys module
---------------
.. automodule:: dtactions.sendkeys
   :members: