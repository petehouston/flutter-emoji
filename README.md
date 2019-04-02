# flutter_emoji

Emoji for Flutter app inspired from the [node-emoji](https://github.com/omnidan/node-emoji) package.

## Installation

Add this into `pubspec.yaml`

```
dependencies:
  flutter_emoji: ">= 1.0.0"
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
```

## License

[MIT](LICENSE.md) @ 2019 [Pete Houston](https://petehouston.com).