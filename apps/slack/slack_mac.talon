os: mac
app: slack
-
tag(): user.messaging
tag(): user.emoji
[slack | lack] threads: key(cmd-shift-t)
toggle pane: key(cmd-.)
new messages: key(cmd-j)
channel engineering:
    mimic("channel eng")
channel <user.text>:
    user.messaging_open_channel_picker()
    sleep(200ms)
    insert(user.formatted_text(user.text, "kebab"))
    key(enter)
mentions: key(cmd-shift-m)
settings():
    # naughty, bad, slow javascript
    key_wait = 100
