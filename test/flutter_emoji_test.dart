import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_emoji/flutter_emoji.dart';

void main() {
  var emoji = Emoji();

  test('get', () {
    expect(emoji.get('coffee'), '☕');
    expect(emoji.get(':coffee:'), '☕');
  });

  test('emoji name', () {
    expect(emoji.hasName('coffee'), true);
    expect(emoji.getName('coffee'), '☕');
  });

  test('emoji code', () {
    expect(emoji.hasEmoji('❤️'), true);
    expect(emoji.getEmoji('❤️'), 'heart');
  });

  test('emojify a text', () {
    expect(emoji.emojify('I :heart: :coffee:'), 'I ❤️ ☕');
  });

  test('unemojify a text', () {
    expect('I :heart: car', emoji.unemojify('I ❤️ car'));
  });
}
