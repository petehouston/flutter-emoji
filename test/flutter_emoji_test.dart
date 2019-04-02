import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_emoji/flutter_emoji.dart';

void main() {
  var emoji = Emoji();

  test('get', () {
    expect('☕', emoji.get('coffee'));
    expect('☕', emoji.get(':coffee:'));
  });

  test('emoji name', () {
    expect(true, emoji.hasName('coffee'));
    expect('☕', emoji.getName('coffee'));
  });

  test('emoji code', () {
    expect(true, emoji.hasEmoji('❤️'));
    expect('heart', emoji.getEmoji('❤️'));
  });

  test('emojify a text', () {
    expect('I ❤️ ☕', emoji.emojify('I :heart: :coffee:'));
  });
}
