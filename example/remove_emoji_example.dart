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
  // chinese characters
  print('你好🙄世界🌬🌫🌨⛈⛈🌨'.removEmoji);
  // japanese characters
  print('こんに🙄ちは世界🌬🌫🌨⛈⛈🌨'.removEmoji);
  // arabic characters
  print('مرحبا با🙄🙄لعالم🌬🌫🌨⛈⛈🌨'.removEmoji);
  // russian characters
  print('При🙄🙄вет мир🌬🌫🌨⛈⛈🌨'.removEmoji);
  // malayalam characters
  print('ഹ🙄🙄ലോ ലോകം🌬🌫🌨⛈⛈🌨'.removEmoji);
  // hindi characters
  print('नमस्ते दुनि🙄🙄या🌬🌫🌨⛈⛈🌨'.removEmoji);
  // ukranian characters
  print('Пр🙄🙄ивіт світ🌬🌫🌨⛈⛈🌨'.removEmoji);
  // spanish characters
  print('Hola M🙄🙄undo🌬🌫🌨⛈⛈🌨'.removEmoji);
  // tamil characters
  print('ஹ🙄🙄லோ உலகம்🌬🌫🌨⛈⛈🌨'.removEmoji);
  // vietnamese characters
  print('Xin chào thế giới🌬🌫🌨⛈⛈🌨'.removEmoji);
  // thai characters
  print('ส🙄🙄วัสดีชาวโลก🌬🌫🌨⛈⛈🌨'.removEmoji);
  // korean characters
  print('안🙄🙄녕하세요 세계🌬🌫🌨⛈⛈🌨'.removEmoji);
  // flags
  print('🇩🇲test'.removEmoji);
  // get the regex string
  print(remove.getRegexString());
}
