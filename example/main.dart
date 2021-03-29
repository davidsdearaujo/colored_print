import 'package:colored_print/colored_print.dart';

void main() {
  print('${PrintColor.magenta('Magenta Color')} and ${PrintColor.yellow('Yellow Color')}');

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
}
