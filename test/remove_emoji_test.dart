import 'package:test/test.dart';
import 'package:remove_emoji/remove_emoji.dart';

RemoveEmoji remove = RemoveEmoji();
String testDataWithSpace = ' 😁h🤔e🤭l😐l🏃🏻🏻o 😅w🤣o👋🏻r😻l🤨d😄 ';

void main() {
  group('clean Extension Tests', () {
    test('trimText = true (default) Validation', () {
      expect(testDataWithSpace.removEmoji, 'hello world');
    });
  });

  group('RemoveEmoji Class Tests', () {
    test('trimText = true (default) Validation', () {
      expect(remove.clean(testDataWithSpace), 'hello world');
    });

    test('trimText = false (override) Validation', () {
      expect(remove.clean(testDataWithSpace, '', false), ' hello world ');
    });
  });

  group('Emoji 14 test', () {
    test('testing 🌬🌫🌨⛈⛈🌨', () {
      expect(remove.clean('testing 🌬🌫🌨⛈⛈🌨'), 'testing');
    });

    test('🫨 Oh wow', () {
      expect(remove.clean('🫨 Oh wow', ''), 'Oh wow');
    });
  });

  group('Emoji 15 test', () {
    test('testing 🪭', () {
      expect(remove.clean('testing 🪭'), 'testing');
    });

    test('nice 🫸 🌬🌫🌨⛈⛈🌨', () {
      expect(remove.clean('nice 🫸 🌬🌫🌨⛈⛈🌨'), 'nice');
    });
  });

  group('Chinese characters and emoji test', () {
    test('你好世界', () {
      expect(remove.clean('你好世界 '), '你好世界');
    });

    test('你好世界🌬🌫🌨⛈⛈🌨', () {
      expect(remove.clean('你好世界🌬🌫🌨⛈⛈🌨'), '你好世界');
    });
  });

  group('Latest Emojis', () {
    test('🇨🇳T🇺🇸🇦🇪🇬🇧E🏴🏁🫣🫨🫨🫨S🫨🫨🫨🫲🏻🫱🏿💪🦾💩🤡T', () {
      expect(
          remove
              .clean('🇨🇳T🇺🇸🇦🇪🇬🇧E🏴🏁🫣🫨🫨🫨S🫨🫨🫨🫲🏻🫱🏿💪🦾💩🤡T'),
          'TEST');
    });
  });
}
