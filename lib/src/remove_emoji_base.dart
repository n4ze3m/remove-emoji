import 'package:remove_emoji/src/util/emoji.dart';

/// Accurately replace/remove emojis in text strings
class RemoveEmoji {
  /// Accurately replace/remove emojis in text strings
  /// Returns a copy of string with any emoji characters removed.
  ///```
  /// var rem = RemoveEmoji();
  /// print(rem.removemoji('🏳️🏴🏴‍☠️🏁hi🚩🏳️‍🌈🏳️‍⚧🇺🇳'));
  ///
  /// //or
  ///
  /// print('🏳️🏴🏴‍☠️🏁hi🚩🏳️‍🌈🏳️‍⚧🇺🇳'.removemoji);
  ///```
  String removemoji(String text, [String word = '']) => text
      .replaceAll(RegExp(r), word)
      .trim()
      .replaceAll(RegExp('[^\x00-\x7F]'), '');
}
