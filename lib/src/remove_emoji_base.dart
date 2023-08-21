import 'package:remove_emoji/src/util/emoji.dart';

/// Accurately replace/remove emojis in text strings
class RemoveEmoji {
  /// Accurately replace/remove emojis in text strings
  /// Returns a copy of string  without emoji characters/
  ///```
  /// var remove = RemoveEmoji();
  /// print(remove.removemoji('🏳️🏴🏴‍☠️🏁hi🚩🇺🇳'));
  ///
  /// //or
  ///
  /// print('🏳️🏴🏴‍☠️🏁hi🚩🇺🇳'.removemoji);
  ///```
  @Deprecated('removemoji is deprecated, use clean instead')
  String removemoji(String text, [String word = '', bool trimText = true]) =>
      trimText
          ? text.replaceAll(RegExp(r), word).trim()
          : text.replaceAll(RegExp(r), word);

  /// Get the emoji regex string
  /// Returns a regex string
  ///```dart
  /// var remove = RemoveEmoji();
  /// print(remove.getRegexString());
  /// ```
  String getRegexString() => r;

  /// Accurately replace/remove emojis in text strings
  /// Returns a copy of string  without emoji characters/
  ///```
  /// print(RemoveEmoji().clean('🏳️🏴🏴‍☠️🏁hi🚩🇺🇳'));
  ///
  /// //or
  ///
  /// print('🏳️🏴🏴‍☠️🏁hi🚩🇺🇳'.removeEmoji);
  ///```
  String clean(String text, [String word = '', bool trimText = true]) =>
      trimText
          ? text
              .replaceAll(
                  RegExp(
                    r,
                  ),
                  word)
              .trim()
          : text.replaceAll(RegExp(r), word);
}
