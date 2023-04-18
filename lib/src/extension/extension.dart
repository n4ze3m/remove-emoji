import 'package:remove_emoji/remove_emoji.dart';

/// Accurately replace/remove emojis in text strings extension
extension RemoveEmojiExtension on String {
  /// Accurately replace/remove emojis in text strings
  /// Returns a copy of string without emoji characters.
  @Deprecated('removemoji is deprecated, use removeEmoji instead')
  String get removemoji => RemoveEmoji().removemoji(this);

  /// Accurately replace/remove emojis in text strings without trimming it
  /// Returns a copy of string without emoji characters or trimming the string.
  @Deprecated('removEmojiNoTrim is deprecated, use removeEmojiNoTrim instead')
  String get removemojiNoTrim => RemoveEmoji().removemoji(this, '', false);

  /// Accurately replace/remove emojis in text strings
  /// Returns a copy of string without emoji characters.
  String get removEmoji => RemoveEmoji().clean(this);

  /// Accurately replace/remove emojis in text strings without trimming it
  /// Returns a copy of string without emoji characters or trimming the string.
  String get removEmojiNoTrim => RemoveEmoji().clean(this, '', false);
}
