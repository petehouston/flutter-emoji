import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_emoji/flutter_emoji.dart';

void main() {
  var emoji = Emoji();

  test('get', () {
    expect(emoji.get('coffee'), '☕');
    expect(emoji.get(':coffee:'), '☕');

    expect(emoji.get('does_not_exist'), null);
    expect(emoji.get(':does_not_exist:'), null);
  });

  test('emoji name', () {
    expect(emoji.hasName('coffee'), true);
    expect(emoji.getName('coffee'), '☕');

    expect(emoji.hasName('does_not_exist'), false);
    expect(emoji.getName(':does_not_exist:'), null);
  });

  test('emoji code', () {
    expect(emoji.hasEmoji('❤️'), true);
    expect(emoji.getEmoji('❤️'), 'heart');

    expect(emoji.hasEmoji('p'), false);
    expect(emoji.getEmoji('p'), null);
  });

  test('emojify a text', () {
    expect(emoji.emojify('I :heart: :coffee:'), 'I ❤️ ☕');

    expect(emoji.emojify('I :love coffee:'), 'I :love coffee:');
    expect(emoji.emojify('I :love :coffee'), 'I :love :coffee');
    expect(emoji.emojify('I love: :coffee'), 'I love: :coffee');
    expect(emoji.emojify('I love: coffee:'), 'I love: coffee:');
  });

  test('unemojify a text', () {
    expect(emoji.unemojify('I ❤️ car'), 'I :heart: car');

    expect(emoji.unemojify('I heart car'), 'I heart car');
    expect(emoji.unemojify('I :heart: car'), 'I :heart: car');
  });
}
