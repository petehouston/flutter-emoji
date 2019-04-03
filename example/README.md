## Examples

The API is straight-forward.

```
var emoji = Emoji();

emoji.hasName('coffee'); // returns: true
emoji.getName('coffee'); // returns: '☕'

emoji.hasEmoji('❤️'); // returns: true
emoji.getEmoji('❤️'); // returns: 'heart'

emoji.emojify('I :heart: :coffee:'); // returns: 'I ❤️ ☕'

emoji.unemojify('I ❤️ ☕'); // returns: 'I :heart: :coffee:'

emoji.info('heart'); // returns: '{name: heart, full: :heart:, emoji: ❤️}'
```
