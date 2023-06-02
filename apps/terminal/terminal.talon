tag: terminal
-
^editor$: key(ctrl-x ctrl-e)
interrupt: key(cmd-.)
branch create <user.text>:
    var = user.formatted_text(text, "snake")
    insert("git checkout -b josh/{var}")
