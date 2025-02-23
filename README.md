# CBWIRE Demo

Welcome to the [CBWIRE](https://cbwire.ortusbooks.com) demo app from my [ITB 2021](https://intothebox.org/) presentation. Please note that CBWIRE has significantly evolved since then, especially with its deep integration with AlpineJS, which is now included with CBWIRE. This example has been updated to work with CBWIRE 4 and changed to include integration with Alpine. - Grant

![alt text][logo]

CBWIRE is a [ColdBox](https://coldbox.org/) module that makes building reactive, dynamic, and modern interfaces delightfully easy without leaving the comfort of CFML.
## Core Files

To see CBWIRE in action, see the following files.

```AsciiDoc
// Layout
./layouts/Main.cfm

// PlanetList cbwire component
./wires/PlanetList.cfc

// PlanetList view
./views/wires/planetlist.cfm
```
## Installation

Using [CommandBox](https://www.ortussolutions.com/products/commandbox), run the following commands from your terminal.

```javascript
box install
box server start
```

Once the application dependencies and server startup complete, your browser should automatically open and you can start tinkering. :)

## Documentation

[https://cbwire.ortusbooks.com](https://cbwire.ortusbooks.com)

[logo]: https://raw.githubusercontent.com/grantcopley/cbwire-demo/main/includes/images/screenshot.png "cbwire Demonstration"