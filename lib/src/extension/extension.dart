import 'package:remove_emoji/remove_emoji.dart';

/// Accurately replace/remove emojis in text strings extension
extension RemoveEmojiExtension on String {
  /// Accurately replace/remove emojis in text strings
  /// Returns a copy of string without emoji characters.
  String get removemoji => RemoveEmoji().removemoji(this);
}
