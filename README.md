# flutter_emoji

👉 A light-weight Emoji 📦 for Flutter with all up-to-date emojis 😄. Made from 💯% ☕ with ❤️!

Inspired from the [node-emoji](https://github.com/omnidan/node-emoji) package.

## Installation

Add this into `pubspec.yaml`

```
dependencies:
  flutter_emoji: ">= 1.1.1"
```

## Usage

First, import the package:

```
import 'package:flutter_emoji/flutter_emoji.dart';
```

The API is straight-forward:

```
var emoji = Emoji();

emoji.get('coffee');   // returns: '☕'
emoji.get(':coffee:'); // returns: '☕'

emoji.hasName('coffee'); // returns: true
emoji.getName('coffee'); // returns: '☕'

emoji.hasEmoji('❤️'); // returns: true
emoji.getEmoji('❤️'); // returns: 'heart'

emoji.emojify('I :heart: :coffee:'); // returns: 'I ❤️ ☕'

emoji.unemojify('I ❤️ ☕'); // returns: 'I :heart: :coffee:'

emoji.info('heart'); // returns: '{name: heart, full: :heart:, emoji: ❤️}'
```

## TODO

Features coming to this package:

- [x] Get detail of an emoji.
- [ ] Find list of available emojis from a given text.
- [ ] Replace emoji by another one.
- [ ] Callback for handling missing emojis on general methods.
- [ ] Auto-update emoji list.

## License

[MIT](LICENSE.md) @ 2019 [Pete Houston](https://petehouston.com).
