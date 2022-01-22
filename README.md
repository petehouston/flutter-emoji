# flutter_emoji

[![Build Status](https://travis-ci.com/petehouston/flutter-emoji.svg?branch=master)](https://travis-ci.com/petehouston/flutter-emoji) [![Coverage](https://codecov.io/gh/petehouston/flutter-emoji/branch/master/graph/badge.svg)](https://codecov.io/gh/petehouston/flutter-emoji)

[![Null Safety](https://img.shields.io/badge/Null%20Safety-YES-brightgreen)](https://img.shields.io/badge/Null%20Safety-YES-brightgreen)

👉 A light-weight Emoji 📦 for Flutter and Dart-based applications with all up-to-date emojis 😄. Made from 💯% ☕ with ❤️!

Inspired from the [node-emoji](https://github.com/omnidan/node-emoji) package.

**Update: since v2.3.4+, support all emojis listed in [Unicode 13.0](https://unicode.org/versions/Unicode13.0.0/).**

**NOTE: I initially created this package to support my Flutter apps. However, Dart is growing to support on more platforms, so starting from v2.4.0+, this package will be available to all types of Dart-based applications.**

## Installation

Add this into `pubspec.yaml`

```
dependencies:
  flutter_emoji: ">= 2.0.0"
```

## API Usage

First, import the package:

```
import 'package:flutter_emoji/flutter_emoji.dart';
```

There are two main classes you need to know to handle Emoji text: `Emoji` and `EmojiParser`.

Basically, you need to initialize an instance of `EmojiParser`.

```
var parser = EmojiParser();
var coffee = Emoji('coffee', '☕');
var heart  = Emoji('heart', '❤️');

// Get emoji info
var emojiHeart = parser.info('heart');
print(emojiHeart); '{name: heart, full: :heart:, code: ❤️}'

// Check emoji equality
heart == emojiHeart;  // returns: true
heart == emojiCoffee; // returns: false

// Get emoji by name or code
parser.get('coffee');   // returns: Emoji{name="coffee", full=":coffee:", code="☕"}
parser.get(':coffee:'); // returns: Emoji{name="coffee", full=":coffee:", code="☕"}

parser.hasName('coffee'); // returns: true
parser.getName('coffee'); // returns: Emoji{name="coffee", full=":coffee:", code="☕"}

parser.hasEmoji('❤️'); // returns: true
parser.getEmoji('❤️'); // returns: Emoji{name="heart", full=":heart:", code="❤️"}

parser.emojify('I :heart: :coffee:'); // returns: 'I ❤️ ☕'
parser.unemojify('I ❤️ ☕'); // returns: 'I :heart: :coffee:'
```

All methods will return `Emoji.None` if emoji is not found, except these two `emojify()` and `unemojify()` that will return original input.

```
parser.get('does_not_exist_emoji_name'); // returns: Emoji.None
```

## TODO

Features coming to this package:

- [x] Get detail of an emoji.
- [x] Refactor for easier usage.
- [x] Validate bad input.
- [ ] Find list of available emojis from a given text.
- [ ] Replace emoji by another one.
- [ ] Callback for handling missing emojis on general methods.
- [ ] Auto-update emoji list.
- [ ] Make extensible emoji matcher.

## License

[MIT](LICENSE.md) @ 2019 [Pete Houston](https://petehouston.com).
