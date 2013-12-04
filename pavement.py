import paver
from paver.easy import *
import paver.setuputils
paver.setuputils.install_distutils_tasks()
import os, sys
import subprocess

sys.path.append(os.getcwd())

# You will want to change these for your own environment in .gitignored paverconfig.py
try:
    from paverconfig import master_url, master_app, minify_js
except:
    print 'NOTICE:  You are using default values for master_* Make your own paverconfig.py file'
    master_url = 'http://127.0.0.1:8000'
    master_app = 'runestone'
    minify_js = False


# Save the most recent
build_info = sh("git describe --long", capture=True)
bif = open('build_info','w')
bif.write(build_info)
bif.close()

options(
    sphinx = Bunch(
        docroot=".",
        ),
)

@task
@cmdopts([('all','a','rebuild everything')])
def everyday(options):
    # project-specific pavements have defaults set but we can override here
    params = ["paver", "build", # task name
              "--masterapp", master_app,
              "--masterurl", master_url]
    if 'all' in options.everyday:
        params.append("-a")

    os.chdir("everyday")
    subprocess.call(params)
    os.chdir("..")

@task
@cmdopts([('all','a','rebuild everything')])
def thinkcspy(options):
    # project-specific pavements have defaults set but we can override here
    params = ["paver", "build", # task name
              "--masterapp", master_app,
              "--masterurl", master_url]
    if 'all' in options.thinkcspy:
        params.append("-a")

    os.chdir("thinkcspy")
    subprocess.call(params)
    os.chdir("..")

    if minify_js:
        sh('./minifyjs.py %s' % "static/thinkcspy")

@task
@cmdopts([('all','a','rebuild everything')])
def pythonds(options):
    # project-specific pavements have defaults set but we can override here
    params = ["paver", "build", # task name
              "--masterapp", master_app,
              "--masterurl", master_url]
    if 'all' in options.pythonds:
        params.append("-a")

    os.chdir("pythonds")
    subprocess.call(params)
    os.chdir("..")

    if minify_js:
        sh('./minifyjs.py %s' % "static/pythonds")

@task
@cmdopts([('all','a','rebuild everything')])
def overview(options):
    # project-specific pavements have defaults set but we can override here
    params = ["paver", "build", # task name
              "--masterapp", master_app,
              "--masterurl", master_url]
    if 'all' in options.overview:
        params.append("-a")

    os.chdir("overview")
    subprocess.call(params)
    os.chdir("..")

    if minify_js:
        sh('./minifyjs.py %s' % "static/overview")

@task
@cmdopts([('all','a','rebuild everything')])
def devcourse(options):
    # project-specific pavements have defaults set but we can override here
    params = ["paver", "build", # task name
              "--masterapp", master_app,
              "--masterurl", master_url]
    if 'all' in options.devcourse:
        params.append("-a")

    os.chdir("devcourse")
    subprocess.call(params)
    os.chdir("..")

    if minify_js:
        sh('./minifyjs.py %s' % "static/devcourse")

@task
@cmdopts([('all','a','rebuild everything')])
def data_analysis(options):
    # project-specific pavements have defaults set but we can override here
    params = ["paver", "build", # task name
              "--masterapp", master_app,
              "--masterurl", master_url]
    if 'all' in options.data_analysis:
        params.append("-a")

    os.chdir("data_analysis")
    subprocess.call(params)
    os.chdir("..")

@task
@cmdopts([('all','a','rebuild everything')])
def allbooks(options):
    opts = Bunch()
    if 'all' in options.allbooks:
        opts['all'] = True

    options.thinkcspy = opts
    options.pythonds = opts
    options.overview = opts
    options.data_analysis = opts

    thinkcspy(options)
    pythonds(options)
    data_analysis(options)
    overview(options)

