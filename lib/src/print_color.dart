import 'package:ansicolor/ansicolor.dart';

enum PrintColor { red, green, white, blue, yellow, grey, cyan, magenta }

extension PrintColorExtension on PrintColor {
  static final _ansiPens = <PrintColor, AnsiPen>{
    PrintColor.red: AnsiPen()..red(bold: true),
    PrintColor.green: AnsiPen()..green(bold: true),
    PrintColor.white: AnsiPen()..white(bold: true),
    PrintColor.yellow: AnsiPen()..yellow(bold: true),
    PrintColor.grey: AnsiPen()..black(bold: true),
    PrintColor.blue: AnsiPen()..blue(bold: true),
    PrintColor.cyan: AnsiPen()..cyan(bold: true),
    PrintColor.magenta: AnsiPen()..magenta(bold: true),
  };
  //ignore: unused_element
  String call(String text) {
    var pen = _ansiPens[this];
    if (pen == null) pen = AnsiPen()..white(bold: true);
    return pen.call(text);
  }
}
