from robot.api.deco import keyword
from subprocess import call

@keyword("Create application on resin")
def open_app(name, type):
	call(["resin", "app", "create", name, "--type", type])

@keyword("Add git remote resin")
def add_remote_resin(path, git):
	call(["git", "-C", path,  "remote", "add", "resin", git])

@keyword("Git push resin")
def git_push_resin(path):
	call(["git", "-C", path, "push", "resin", "master"])
