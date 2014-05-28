Tile Utils
======

## About

Tile Utils is a library for downloading map tiles from a specified endpoint

## Installation

```
git clone https://github.com/rclosner/tile_utils.git
cd tile_utils
bundle install
```

## Usage

```
./bin/tile_utils --lat-min 0 --lat-max 0 --lng-min 0 --lng-max 0 --path-template /local/path/{z}/{x}/{y}.png --url-template https://tile-server.com/{z}/{x}/{y}.png --zoom-min 10 --zoom-max 20
```

## Options

  * --lat-min, -l <f>:   Minimum latitude
  * --lat-max, -a <f>:   Maximum latitude
  * --lng-min, -n <f>:   Minimum longitude
  * --lng-max, -g <f>:   Maximum longitude
  * --zoom-min, -z <i>:   Minimum zoom level
  * --zoom-max, -o <i>:   Maximum zoom level
  * --path-template, -p <s>:   Path to store map tiles
  * --url-template, -u <s>:   URL template for downloading
  * --help, -h:   Show this message
