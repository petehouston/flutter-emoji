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
parser.get('coffee');   // returns: Emoji{name="coffee", full=":coffee:", code="☕"}
parser.get(':coffee:'); // returns: Emoji{name="coffee", full=":coffee:", code="☕"}

parser.hasName('coffee'); // returns: true
parser.getName('coffee'); // returns: Emoji{name="coffee", full=":coffee:", code="☕"}

parser.hasEmoji('❤️'); // returns: true
parser.getEmoji('❤️'); // returns: Emoji{name="heart", full=":heart:", code="❤️"}

parser.emojify('I :heart: :coffee:'); // returns: 'I ❤️ ☕'
parser.unemojify('I ❤️ ☕'); // returns: 'I :heart: :coffee:'
```

All methods will return `Emoji.None` if emoji is not found.

```
parser.get('does_not_exist_emoji_name'); // returns: Emoji.None
```
