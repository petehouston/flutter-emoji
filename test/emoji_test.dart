import 'package:flutter_test/flutter_test.dart';

import 'package:emoji/emoji.dart';

void main() {
  var emoji = Emoji();

  test('emoji name', () {
    expect(true, emoji.hasName('coffee'));
    expect('☕', emoji.getName('coffee'));
  });

  test('emoji code', () {
    expect(true, emoji.hasEmoji('❤️'));
    expect('heart', emoji.getEmoji('❤️'));
  });

  test('emojify a text', () {
    emoji.emojify('I :heart: :coffee:');
  });
}
