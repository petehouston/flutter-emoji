## Examples
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
emoji.get('coffee');   // returns: Emoji{name="coffee", full=":coffee:", code="☕"}
emoji.get(':coffee:'); // returns: Emoji{name="coffee", full=":coffee:", code="☕"}

emoji.hasName('coffee'); // returns: true
emoji.getName('coffee'); // returns: Emoji{name="coffee", full=":coffee:", code="☕"}

emoji.hasEmoji('❤️'); // returns: true
emoji.getEmoji('❤️'); // returns: Emoji{name="heart", full=":heart:", code="❤️"}

emoji.emojify('I :heart: :coffee:'); // returns: 'I ❤️ ☕'
emoji.unemojify('I ❤️ ☕'); // returns: 'I :heart: :coffee:'
```
