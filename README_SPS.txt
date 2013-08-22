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

One problem is that the master url has to be set in order
for things to work properly, so that means that
you will have to change it regularly in physres and for
Java4Python. When running locally, just use 127.0.0.1:8000
which is the default configuration for web2py.

The ideal case is the real master server's ip running on port 80,
unless there are routers involved in which case things might be
a little nicer to handle, but that's another story.
