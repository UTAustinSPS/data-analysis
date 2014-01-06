Importing Data
==============
File Formats
------------
While being able to create functions, tables, and graphs is nice, in a laboratory setting,
we really need to be able to work with data from lab equipment. Many software packages
exist that interface with electronics (National Instruments' *LabVIEW* is a prime
example), and are able to provide text files with data. Sometimes this is in a
"human-readable" format, but often it is in a computer-friendly format, such as TSV (tab-separated
values), CSV (comma-separated values), or even XLS (Microsoft *Excel* format). Some may have
headers in the data (a first row that names what each column represents), others may
not. Here are some examples for reference:

.. table:: **Table 1: Examples of Data Files with Same Data**

	====== ============================================ ======================================
	Format Without Header                               With Header
	====== ============================================ ======================================
	CSV    :download:`without.csv <data/without.csv>`   :download:`with.csv <data/with.csv>`
	JSON   :download:`without.json <data/without.json>` :download:`with.json <data/with.json>`
	TSV    :download:`without.tsv <data/without.tsv>`   :download:`with.tsv <data/with.tsv>`
	XLS    :download:`without.xls <data/without.xls>`   :download:`with.xls <data/with.xls>`
	XLSX   :download:`without.xlsx <data/without.xlsx>` :download:`with.xlsx <data/with.xlsx>`
	XML    :download:`without.xml <data/without.xml>`   :download:`with.xml <data/with.xml>`
	====== ============================================ ======================================

The CSV, TSV, XLS, and XLSX files should be easily opened in *Excel* or other spreadsheet
software. The JSON and XML should be viewable in a web browser (these are less-likely to
occur in a lab setting, but are fairly ubiquitous in some spheres).

From File to Usable
-------------------
Once we have our data, we can easily import it to *Mathematica* with the :code:`Import` command
if it is one of the examples above or other well-defined type (as with exporting,
in *Mathematica*'s help, look at "guide/ListingOfAllFormats"). For example, for any of the above,
we can write

::

	table = Import["filename"]

and :code:`table` will then have all the data in a 2-column list. If the data has a header,
it can be accessed with :code:`table[[1]]`. And the header can be removed with 
:code:`table = table[[2;;Length[table]]]`. We can now do the usual things like plot the data
with :code:`ListPlot`, etc.

"Annoying" Formats
------------------
Sometimes we might have a format that isn't built-in, and doesn't have clean "delimeters" (that
is, special symbols to mark the end of each entry in a list of entries). We might have a system
that has entries that ar 4 space-separated values that are then separated by spaces.
That would give a data file like :download:`this <data/annoying.txt>`. Normal formats
can't tell the difference between entries because they aren't based on having
multiple lines, each with a single entry, or a similar construct. In this case, we can
use :code:`ReadList`. This function allows us to set a custom set of delimeters, and even
the types of data for each entry.

::

	ReadList["annoying.txt",
		{Number, Number, Number, Number},
		WordSeparators -> {" "},
		RecordSeparators -> {" "}]

Reads in :code:`{{0., 1., 12., 2.2}, {1.2, 4.2, 0.2, 2.4}, {2.4, 6.4, 1.2, 1.4}}`.