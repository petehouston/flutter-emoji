## 2.5.1

- Add few emojis to preset json data source.

## 2.5.0

- Update `http' dependency to `1.*`.
- Update colon-syntax to equal sign for default values, https://github.com/dart-lang/language/issues/2357.

## 2.4.0

- Add `count()` to count number of emojis in the input.
- Add `frequency()` to count frequency of a specific emoji.
- Add `parseEmojis()` to get a list of emojis found from input.
- Add `replace()` to replace a specific emoji by another emoji.
- Add ability to fetch latest emoji dataset from server. This would be helpful when local provided emoji dataset not up-to-date.
- Update spec to allow package to be used across all platforms Dart supports.

## 2.3.4

- Leverage [`characters`](https://pub.dev/packages/characters) library to handle grapheme clusters/glyphs emojis.

## 2.3.3

- Add new list of emojis.

## 2.3.2

- Replace 'pedantic' by 'lint'.
- Refactoring to null safety according to the [official Dart migration guide](https://dart.dev/null-safety/migration-guide).

## 2.3.1

- Update sdk constraints to null safety. Reference: [SDK Constraints](https://dart.dev/null-safety#constraints).

## 2.3.0

- Update dependencies.

## 2.2.1

- Fix [issue #6](https://github.com/petehouston/flutter-emoji/issues/6): fail to parse `:+1:` emoji.

## 2.2.0

- Fix issue: emojis with dash `-` in name are not parsed. 

## 2.1.0

- Fix issue: (temp solution) around 600+ emojis not being matched.

## 2.0.0

*Breaking changes*
- New `Emoji` class now acts like a data container.
- New `EmojiParser` class to handle emoji operation, like `get()`, `emojify()`...
- New `EmojiUtil` class to handle common operations for normalizing emoji.
- Update documentation.

## 1.1.1

- Description updated.

## 1.1.0

- Add `unemojify()`.
- Fixed bug with multi-bytes emojis.
- Some refactors.

## 1.0.1

- Update documentation.
- Add `get()`.

## 1.0.0

* Initial release.
