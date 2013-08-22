Howdy UT SPS/ SpiS contributors!

The system for updating the textbook is kind of complicated, but
isn't totally unreasonable.

You'll need to clone the git repo from the SPS server to make changes.
Follow the directions at https://github.com/bnmnetp/runestone except
change the git clone location to the one we provide.

This has a different textbook in physres, which should
mostly work except the models/0.py file on your machine.

For now, let us know when you push something to the server so that
we know to rebuild the site.

For editing the "main" site, you'll need to edit things in the "views"
directory, which is just the raw html that gets used for menus, etc.

Please don't forget to really test all the parts of any code you commit so we don't get broken code on the server.
