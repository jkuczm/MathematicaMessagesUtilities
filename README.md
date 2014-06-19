# Messages Utilities

[![release](http://img.shields.io/github/release/jkuczm/MathematicaMessagesUtilities.svg)](https://github.com/jkuczm/MathematicaMessagesUtilities/releases/latest)
[![Semantic Versioning](http://img.shields.io/badge/SemVer-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
[![license MIT](http://img.shields.io/:license-MIT-blue.svg)](https://github.com/jkuczm/MathematicaMessagesUtilities/blob/master/LICENSE)


Set of tools for managing messages in Mathematica.


* [Installation](#installation)
    * [Automatic installation](#automatic-installation)
    * [Manual installation](#manual-installation)
    * [No installation](#no-installation)
* [Compatibility](#compatibility)
* [Bugs and requests](#bugs-and-requests)
* [Contributing](#contributing)
* [License](#license)
* [Versioning](#versioning)



## Installation


### Automatic installation

To install MessagesUtilities package evaluate:
```Mathematica
Get["https://raw.githubusercontent.com/jkuczm/MathematicaMessagesUtilities/master/BootstrapInstall.m"]
```

Note that this will also install
[ProjectInstaller](https://github.com/lshifr/ProjectInstaller) package, if you
don't have it already installed.

To load MessagesUtilities package evaluate: ``Needs["MessagesUtilities`"]``.


### Manual installation

1. Download latest released
   [MessagesUtilities.zip](https://github.com/jkuczm/MathematicaMessagesUtilities/releases/download/v0.1.0/MessagesUtilities.zip)
   file.

2. Extract downloaded `MessagesUtilities.zip` to any directory which is on
   Mathematica `$Path`, e.g. to one obtained by evaluating
   `FileNameJoin[{$UserBaseDirectory,"Applications"}]`.

3. To load the package evaluate: ``Needs["MessagesUtilities`"]``


### No installation

To use package directly from the Web, without installation, evaluate:
```Mathematica
Get["https://raw.githubusercontent.com/jkuczm/MathematicaMessagesUtilities/master/MessagesUtilities/MessagesUtilities.m"]
```



## Compatibility

This package contains automatic test suite. Package is being tested with
Mathematica versions 8.0 and 9.0 on Linux. Since it doesn't contain any OS
specific code it should work with above versions on all operating systems.



## Bugs and requests

If you find any bugs or have feature request please create an
[issue on GitHub](https://github.com/jkuczm/MathematicaMessagesUtilities/issues).



## Contributing

Feel free to fork and send pull requests.

If you want to use Ant scripts from this repository you will also need to
install [WWBCommon](https://github.com/jkuczm/WWBCommon) project.

All contributions are welcome!



## License

This package is released under
[The MIT License](https://github.com/jkuczm/MathematicaMessagesUtilities/blob/master/LICENSE).


### Attribution

Code of `CollectMessages` function is a derivative of code written by
[Szabolcs](http://mathematica.stackexchange.com/users/12) in
[answer to "How to catch complete error message information"](http://mathematica.stackexchange.com/questions/20367#answer-20371)
question on Mathematica Stack Exchange used under
[Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).



## Versioning

Releases of this package will be numbered using
[Semantic Versioning guidelines](http://semver.org/).
