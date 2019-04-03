import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_emoji/flutter_emoji.dart';

void main() {
  var emojiParser = EmojiParser();
  var emojiCoffee = Emoji('coffee', '☕');
  var emojiHeart = Emoji('heart', '❤️');

  test('get', () {
    expect(emojiParser.get('coffee'), emojiCoffee);
    expect(emojiParser.get(':coffee:'), emojiCoffee);

    expect(emojiParser.get('does_not_exist'), Emoji.None);
    expect(emojiParser.get(':does_not_exist:'), Emoji.None);
  });

  test('emoji name', () {
    expect(emojiParser.hasName('coffee'), true);
    expect(emojiParser.getName('coffee'), emojiCoffee);

    expect(emojiParser.hasName('does_not_exist'), false);
    expect(emojiParser.getName(':does_not_exist:'), Emoji.None);
  });

  test('emoji info', () {
    var heart = emojiParser.info('heart');

    expect(heart != null, true);
    expect(heart is Emoji, true);

    expect(heart.name, 'heart');
    expect(heart.full, ':heart:');
    expect(heart.code, '❤️');
  });

  test('emoji code', () {
    expect(emojiParser.hasEmoji('❤️'), true);
    expect(emojiParser.getEmoji('❤️'), emojiHeart);

    expect(emojiParser.hasEmoji('p'), false);
    expect(emojiParser.getEmoji('p'), Emoji.None);
  });

  test('emojify a text', () {
    expect(emojiParser.emojify('I :heart: :coffee:'), 'I ❤️ ☕');

    expect(emojiParser.emojify('I :love coffee:'), 'I :love coffee:');
    expect(emojiParser.emojify('I :love :coffee'), 'I :love :coffee');
    expect(emojiParser.emojify('I love: :coffee'), 'I love: :coffee');
    expect(emojiParser.emojify('I love: coffee:'), 'I love: coffee:');
  });

  test('unemojify a text', () {
    expect(emojiParser.unemojify('I ❤️ car'), 'I :heart: car');

    expect(emojiParser.unemojify('I heart car'), 'I heart car');
    expect(emojiParser.unemojify('I :heart: car'), 'I :heart: car');
  });
}
