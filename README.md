[![Fork](https://img.shields.io/github/forks/davidsdearaujo/colored_print?style=social)](https://github.com/davidsdearaujo/colored_print/fork) &nbsp; [![Star](https://img.shields.io/github/stars/davidsdearaujo/colored_print?style=social)](https://github.com/davidsdearaujo/colored_print/stargazers) &nbsp; [![Watches](https://img.shields.io/github/watchers/davidsdearaujo/colored_print?style=social)](https://github.com/davidsdearaujo/colored_print/) 

[![Plugin](https://img.shields.io/badge/library-pub.dev-blue)](https://pub.dev/packages/colored_print) &nbsp; [![Example](https://img.shields.io/badge/example-ex-success)](https://pub.dev/packages/colored_print#-example-tab-)

# Print Color

This package makes it possible to use colored prints.

## Usage
**pubspec.yaml**
```yaml
dependency:
  colored_print: <lastest version>
```

**your_file.dart**
```dart
import 'package:colored_print/colored_print.dart';

print('${PrintColor.magenta('Magenta Color')} and ${PrintColor.yellow('Yellow Color')}');
```
**Result:**

![image](https://user-images.githubusercontent.com/16373553/112857752-8b7ad600-9087-11eb-8a55-89cbf6a825e4.png)

## ColoredPrint
To facilitate its use, the auxiliary class `ColoredPrint` was created:
```dart
import 'package:colored_print/colored_print.dart';

//For single color line
ColoredPrint.show("Single Color Message", messageColor: PrintColor.cyan);

//For warning messages
ColoredPrint.warning("Warning Message");

//For error messages
ColoredPrint.error("Error Message");

//For success messages
ColoredPrint.success("Success Message");

//For logs (default)
ColoredPrint.log("Custom Log Message");

//For logs using custom tag and custom colors
ColoredPrint.log(
  "Custom Message",
  tag: "WALLACE", //Optional parameter. Default: "LOG"
  messageColor: PrintColor.white, //Optional parameter. Default: PrintColor.yellow
  tagColor: PrintColor.grey, //Optional parameter. Default: PrintColor.grey
);
```

**Result:**

![image](https://user-images.githubusercontent.com/16373553/112857975-cc72ea80-9087-11eb-9bc5-9073827a68c9.png)
