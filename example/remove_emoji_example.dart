import 'package:remove_emoji/remove_emoji.dart';

void main() {
  var remove = RemoveEmoji();
  print(remove.clean(
      '🤣h😌e🙄l😪l😓o😳🤔👨‍🦰🤶🏿 🧝‍♂️🍝🥘🌯🍦🥂🥂🎂🍰🧁🍨🍧😁w🤷‍♂️o😎r🤪l🤦‍♂️d🐸🤑😆😖🎉🍾🤟🤩😢🐭😡😍📧😄😔😇🧐😈🙁🤓🙂🥱'));
  // or
  print(
      '🤣h😌e🙄l😪l😓o😳🤔👨‍🦰🤶🏿 🧝‍♂️🍝🥘🌯🍦🥂🥂🎂🍰🧁🍨🍧😁w🤷‍♂️o😎r🤪l🤦‍♂️d🐸🤑😆😖🎉🍾🤟🤩😢🐭😡😍📧😄😔😇🧐😈🙁🤓🙂🥱'
          .removEmoji);
  // other language
  print('5 rue des écoles. la quantiné 75000 Paris🤣🥂'.removEmojiNoTrim);
  // get the regex string
  // this function will help you to get the regex string and use it in your own code 
  print(remove.getRegexString());
}
