import 'package:colored_print/src/print_color.dart';
import 'package:test/test.dart';

void main() {
  test('grey equals black', () {
    expect(PrintColor.black.colorMarker, PrintColor.grey.colorMarker);
  });

  Map<PrintColor, String> colors = {
    PrintColor.red: '\x1B[31m',
    PrintColor.green: '\x1B[32m',
    PrintColor.white: '\x1B[37m',
    PrintColor.yellow: '\x1B[33m',
    PrintColor.black: '\x1B[30m', //equals PrintColor.grey
    PrintColor.blue: '\x1B[34m',
    PrintColor.cyan: '\x1B[36m',
    PrintColor.magenta: '\x1B[35m',
  };

  for (var color in colors.entries) {
    test('${color.value}colorMarker', () {
      expect(color.key.colorMarker, color.value);
    });
    test('${color.value}ends with reset color', () {
      final message = 'mock-message';
      expect(color.key.call(message), endsWith(PrintColor.resetColorMarker));
    });
    test('${color.value}contains message', () {
      final message = 'mock-message';
      expect(color.key.call(message), contains(message));
    });
    test('${color.value}sequence', () {
      final message = 'mock-message';
      expect(color.key.call(message), stringContainsInOrder([color.value, message, PrintColor.resetColorMarker]));
    });
  }
}
