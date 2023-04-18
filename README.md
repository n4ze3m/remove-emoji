<h1 align="center">Remove Emoji 😢</h1>

Dart package accurately replace/remove emojis in text. Remove-emoji heavily inspired by NodeJS package [emoji-regex](https://github.com/mathiasbynens/emoji-regex/).

## Usage 🤓

A simple usage example:

```dart
import 'package:remove_emoji/remove_emoji.dart';

void main() {
  var word = '🤣h😌e🙄l😪l😓o😳🤔👨‍🦰🤶🏿 🧝‍♂️🍝🥘🌯🍦🥂🥂🎂🍰🧁🍨🍧😁w🤷‍♂️o😎r🤪l🤦‍♂️d🐸🤑😆😖🎉🍾🤟🤩😢🐭😡😍📧😄😔😇🧐😈🙁🤓🙂🥱';
  var remove = RemoveEmoji();

  //  with trim
  print(remove.clean(word));

  // without trim
  print(remove.clean(word,'', false));

  // or use extension 🤓

  // with trim
  print(word.removEmoji);
 // without trim
 print(word.removEmojiNoTrim);
}
```

_output_

```
hello world
hello world
```

## Contribution 🤓

Happy 😍 to recieve or provide contributions related to this package.

## Features and bugs 🐛

Please file feature requests and bugs at the [issue tracker](https://github.com/n4ze3m/remove-emoji/issues).

## Contact 📧

if you have any questions , feel free to wite us on

- [Twitter](https://twitter.com/n4ze3m)