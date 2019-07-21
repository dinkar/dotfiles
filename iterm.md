# To move and delete one word at a time in iTerm

Goto `Preferences > Keys (or Preferences > Profiles > Keys)`

Click the plus.


## Move forward one word
```
option+right
send escape sequence
f

```
## Move back one word
```
option+left
send escape sequence
b
```

# Delete to beginning of word
```
option+delete
send hex code
0x1B 0x08
```

# Delete to end of word
```
fn+option+delete
send escape sequence
d
```

Source: https://apple.stackexchange.com/a/293988
