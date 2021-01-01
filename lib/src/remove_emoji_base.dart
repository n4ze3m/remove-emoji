import 'package:remove_emoji/src/util/emoji.dart';

/// Accurately replace/remove emojis in text strings
class RemoveEmoji {
  /// Accurately replace/remove emojis in text strings
  /// Returns a copy of string  without emoji characters/
  ///```
  /// var remove = RemoveEmoji();
  /// print(remove.removemoji('🏳️🏴🏴‍☠️🏁hi🚩🏳️‍🌈🏳️‍⚧🇺🇳'));
  ///
  /// //or
  ///
  /// print('🏳️🏴🏴‍☠️🏁hi🚩🏳️‍🌈🏳️‍⚧🇺🇳'.removemoji);
  ///```
  String removemoji(String text, [String word = '']) =>
      text.replaceAll(RegExp(r), word).trim();
}
