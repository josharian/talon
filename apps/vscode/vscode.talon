#custom vscode commands go here
app: vscode
os: mac
-
file save:
    user.vscode("workbench.action.files.save")
file close:
    user.vscode("workbench.action.closeActiveEditor")
file save close:
    user.vscode("workbench.action.files.save")
    user.vscode("workbench.action.closeActiveEditor")
^file abandon$:
    user.vscode("workbench.action.revertAndCloseActiveEditor")
^back to terminal$:
    user.vscode("workbench.action.files.save")
    user.vscode("workbench.action.closeActiveEditor")
    user.switcher_focus("terminal")
file pop:
    user.vscode("workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup")
    sleep(30ms)
    key(enter)
toggle pane:
    user.vscode("workbench.action.toggleSidebarVisibility")
