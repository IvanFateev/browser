Liri Browser
============

[![License](https://img.shields.io/badge/license-GPLv3.0-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)
[![GitHub release](https://img.shields.io/github/release/lirios/browser.svg)](https://github.com/lirios/browser)
[![Build Status](https://travis-ci.org/lirios/browser.svg?branch=develop)](https://travis-ci.org/lirios/browser)
[![GitHub issues](https://img.shields.io/github/issues/lirios/browser.svg)](https://github.com/lirios/browser/issues)
[![Maintained](https://img.shields.io/maintenance/yes/2017.svg)](https://github.com/lirios/browser/commits/develop)

A cross-platform material design web browser

## Dependencies
* Qt >= 5.8.0 with at least the following modules is required:
  * [qtbase](http://code.qt.io/cgit/qt/qtbase.git)
  * [qtdeclarative](http://code.qt.io/cgit/qt/qtdeclarative.git)
  * [qtquickcontrols2](http://code.qt.io/cgit/qt/qtquickcontrols2.git)
  * [qtwebengine](http://code.qt.io/cgit/qt/qtwebengine.git/)
  * [qtsvg](http://code.qt.io/cgit/qt/qtsvg.git/)
  * [qtgraphicaleffects](http://code.qt.io/cgit/qt/qtgraphicaleffects.git/)

The following modules and their dependencies are required:
* [Fluid](https://github.com/lirios/fluid) from develop branch

## Build

From the root of the repository, run:
```sh
mkdir build && cd build
qmake ..
make
```

Use `make distclean` from inside your `build` directory to clean up.
You need to do this before rerunning `qmake` with different options.

## Install

From your build directory, run:
```sh
sudo make install
```
The browser will be installed to `/usr/local` by default. To specify a custom installation prefix,
set the `LIRI_INSTALL_PREFIX` option when running `qmake`. For example:
```sh
qmake .. LIRI_INSTALL_PREFIX=/opt
```

## Credits
Many thanks to ...
* [Corbin Crutchley](https://github.com/crutchcorn) for creating the application icon
* [Simon Peter](https://github.com/probonopd) for adding AppImage support

## Licensing
Licensed under the terms of the GNU General Public License version 3 or, at your option, any later version.
