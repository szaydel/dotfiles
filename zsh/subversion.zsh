#!/usr/bin/env zsh

# Accomodate the updated version of Subversion
export DYLD_LIBRARY_PATH="/opt/subversion/lib:$DYLD_LIBRARY_PATH"
export PYTHONPATH="/opt/subversion/lib/svn-python:$PYTHONPATH"
export PATH="/opt/subversion/bin:$PATH"