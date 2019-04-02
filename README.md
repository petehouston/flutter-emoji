# flutter-emoji

Emoji for Flutter app inspired from the [node-emoji](https://github.com/omnidan/node-emoji) package.

## Installation

Add this into `pubspec.yaml`

```
dependencies:
  emoji: ">= 1.0.0"
```

## Usage

First, import the package:

```
import 'package:emoji/emoji.dart';
```

The API is straight-forward:

```
var emoji = Emoji();

emoji.hasName('coffee'); // returns: true
emoji.getName('coffee'); // returns: '☕'

emoji.hasEmoji('❤️'); // returns: true
emoji.getEmoji('❤️'); // returns: 'heart'

emoji.emojify('I :heart: :coffee:'); // returns: 'I ❤️ ☕'
```

## License

MIT &copy 2019 [Pete Houston](https://petehouston.com].