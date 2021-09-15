# cbwire demo

This is the [cbwire](https://cbwire.ortusbooks.com) demonstration app that was shown for [Into The Box 2021](https://intothebox.org/).

cbwire is a ColdBox module that makes building reactive, dynamic, and modern interfaces delightfully easy without leaving the comfort of CFML.
## Installation

Using [CommandBox](https://www.ortussolutions.com/products/commandbox), run the following commands from your terminal.

```javascript
box install
box server start
```

Once the application dependencies and server startup complete, your browser should automatically open and you can start tinkering. :)

![alt text][logo]

## Core Files

To see cbwire in action, see the following files.

```javascript
// Layout
./layouts/Main.cfm

// PlanetList cbwire component
./wires/PlanetList.cfc

// PlanetList view
./views/wires/planetlist.cfm
```

## Documentation

[https://cbwire.ortusbooks.com](https://cbwire.ortusbooks.com)

[logo]: https://raw.githubusercontent.com/grantcopley/cbwire-demo/main/includes/images/screenshot.png "cbwire Demonstration"