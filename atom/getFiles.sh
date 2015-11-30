#!/bin/bash

apm list --installed --bare > packages.list
more packages.list
