# flutter_emoji

[![Build Status](https://travis-ci.com/petehouston/flutter-emoji.svg?branch=master)](https://travis-ci.com/petehouston/flutter-emoji) [![Coverage](https://codecov.io/gh/petehouston/flutter-emoji/branch/master/graph/badge.svg)](https://codecov.io/gh/petehouston/flutter-emoji)

[![Null Safety](https://img.shields.io/badge/Null%20Safety-YES-brightgreen)](https://img.shields.io/badge/Null%20Safety-YES-brightgreen)

👉 A light-weight Emoji 📦 for Flutter and Dart-based applications with all up-to-date emojis 😄. Made from 💯% ☕ with ❤️!

Inspired from the [node-emoji](https://github.com/omnidan/node-emoji) package.

**Update: since v2.3.4+, support all emojis listed in [Unicode 13.0](https://unicode.org/versions/Unicode13.0.0/).**

**NOTE: I initially created this package to support my Flutter apps. However, Dart is growing to support on more platforms, so starting from v2.4.0+, this package will be available to all types of Dart-based applications.**

## Work in progress

I'm working on the new version of the package, it might or might not introduce breaking changes but I will try to maintain the compatibility in the API.

Here are few upcoming update to the v3:

- Support Unicode 15.1+ emojis.
- Skin tone
- Group (category) of the emojis
- Emoji version
- Few new methods for handling/manipulating emojis.

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

Basically, you need to initialize an instance of `EmojiParser` and call its methods.

```dart
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

// Count number of present emojis
parser.count('I ❤️ Flutter just like ☕'); // returns: 2

// Count frequency of a specific emoji
parser.frequency('I ❤️ Flutter just like ☕', '❤️'); // returns: 1

// Replace a specific emoji by another emoji
parser.replace('I ❤️ coffee', '❤️', '❤️‍🔥'); // returns: 'I ❤️‍🔥 coffee'

// Get a list of all emojis from the input
parser.parseEmojis('I ❤️ Flutter just like ☕'); // returns: ['❤️', '☕']
```

All methods will return `Emoji.None` if emoji is not found, except these two `emojify()` and `unemojify()` that will return original input.

```
parser.get('does_not_exist_emoji_name'); // returns: Emoji.None
```

### Initialize emoji data for `EmojiParser`

There are two available datasets available you can choose to initialize for `EmojiParser`: **local** and **server**.

```dart
// to load local dataset
var localParser1 = EmojiParser();
var localParser2 = EmojiParser(init: false);
localParser2.initLocalData();

// to load server dataset
// this will trigger an URL request to download latest emoji data
var serverParser = EmojiParser(init: false);
await serverParser.initServerData(); // make sure to wrap in an `async` function/method.
```

**NOTE: make sure to add Internet permission on Android.**

```xml
<!-- Required to fetch data from the internet. -->
<uses-permission android:name="android.permission.INTERNET" />
```

**In any occasion that local dataset doesn't have the latest emojis, load server dataset instead. If it is still not working, please create an issue or pull request to the repo.**

## TODO

Features coming to this package:

- [x] Get detail of an emoji.
- [x] Refactor for easier usage.
- [x] Validate bad input.
- [x] Find list of available emojis from a given text.
- [x] Replace emoji by another one.
- [x] Callback for additional formatting found emojis.
- [x] Ability to fetch latest emoji list.
- [ ] Make extensible emoji matcher.

## License

[MIT](LICENSE.md) @ 2019 [Pete Houston](https://petehouston.com).
