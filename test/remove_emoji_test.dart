import 'package:test/test.dart';
import 'package:remove_emoji/remove_emoji.dart';

// ----------------------------------------------------------------------------
// Test Setup Stuff
RemoveEmoji remove = RemoveEmoji();
String testDataWithSpace =
    ' 🤣h😌e🙄l😪l😓o😳🤔👨‍🦰🤶🏿 🧝‍♂️🍝🥘🌯🍦🥂🥂🎂🍰🧁🍨🍧😁w🤷‍♂️o😎r🤪l🤦‍♂️d🐸🤑😆😖🎉🍾🤟🤩😢🐭😡😍📧😄😔😇🧐😈🙁🤓🙂🥱 ';

// ----------------------------------------------------------------------------
// Actual Test
void main() {
  group('removemoji Extension Tests', () {
    test('trimText = true (default) Validation', () {
      expect(testDataWithSpace.removemoji, 'hello world');
    });

    test('trimText = false (override) Validation', () {
      expect(testDataWithSpace.removemojiNoTrim, ' hello world ');
    });
  });

  group('RemoveEmoji Class Tests', () {
    test('trimText = true (default) Validation', () {
      expect(remove.removemoji(testDataWithSpace), 'hello world');
    });

    test('trimText = false (override) Validation', () {
      expect(remove.removemoji(testDataWithSpace, '', false), ' hello world ');
    });
  });
}
