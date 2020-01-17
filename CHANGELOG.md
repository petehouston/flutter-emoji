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
