import 'package:colored_print/colored_print.dart';

void main() {
  print(PrintColor.magenta("Magenta Color") + " and " + PrintColor.yellow("Yellow Color"));
  ColoredPrint.show("\nSingle Color Message", messageColor: PrintColor.cyan);
  ColoredPrint.warning("Warning Message");
  ColoredPrint.error("Error Message");
  ColoredPrint.success("Success Message");
  ColoredPrint.log("Custom Log Message");
  ColoredPrint.log(
    "Custom Message",
    tag: "WALLACE", //Optional parameter. Default: "LOG"
    messageColor: PrintColor.white, //Optional parameter. Default: PrintColor.white
    tagColor: PrintColor.grey, //Optional parameter. Default: PrintColor.grey
  );
}
