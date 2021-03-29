import 'print_color.dart';

class ColoredPrint {
  static void success(msg) => log(msg, tag: 'SUCCESS', tagColor: PrintColor.green);
  static void error(msg) => log(msg, tag: 'ERROR', tagColor: PrintColor.red);
  static void warning(msg) => log(msg, tag: 'WARNING', tagColor: PrintColor.yellow);
  static show(msg, {PrintColor messageColor = PrintColor.white}) => log(msg, messageColor: messageColor, tag: "");
  static void log(
    String message, {
    String tag = "LOG",
    PrintColor tagColor = PrintColor.grey,
    PrintColor messageColor = PrintColor.yellow,
  }) {
    var content = "";
    if (tag.isNotEmpty) content += tagColor("[$tag] ");
    content += messageColor(message);
    print(content);
  }
}
