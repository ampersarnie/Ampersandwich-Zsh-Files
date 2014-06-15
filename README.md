# Ampersandwich Zsh Files
These are just a collection of custom Zsh scripts that I have begun to write and thought might be worth sharing.

## Requirements
* [ZSH (duh...)](http://zsh.org)
* [Oh My ZSH!](https://github.com/robbyrussell/oh-my-zsh)

## Setup
To setup these scripts for use with your zsh environment, first make sure you have the most recent version of [ZSH](http://zsh.org) and [Oh My ZSH!](https://github.com/robbyrussell/oh-my-zsh). Once you have made sure that you're up to date, copy the `config-example.zsh`, edit the variables and settings that you require and save as `config.zsh` in the same directory. Then add `amper-init.zsh` to the bottom of (or at least below `source $ZSH/oh-my-zsh.sh`) your `~/.zshrc` file.

You will end up with an `~/.zshrc` file that looks a bit like this:
```
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DEFAULT_USER=“you”
source $ZSH/oh-my-zsh.sh
source ~/.zsh/amper-init.zsh
…
```
###### Github
A couple of these scripts require a Github API Access Token using the `GITHUB_ACCESS_TOKEN` variable. You can [generate a token here](https://github.com/settings/applications#personal-access-tokens). Define your token within your `config.zsh` file.

# How to use the Commands
## globals.zsh
#### this-os
Prints the current OS being used in lowercase.

#### cpwd
Shows the current working directory without the full path.

#### die
Kills off the current process without exiting terminal.

#### clear-term-logs
Deletes all terminal logs - useful if prompt is slow.

## osx.zsh
#### send-notification <message> [<title>]
Sends a message to OSX’s Notification Center.
###### Send a message:
`send-notification “Hello world.”`
###### Send a message with a title:
`send-notification "Hello world\nMy Script is complete." "My Script"`

#### send-message <message> [<recipient>]
Sends a message using OSX's Messages App. _Sends to self if no recipient provided._
###### Send a message to yourself
`send-message “Just a reminder that people are awesome.”`
###### Send a message to a recipient.
`send-message "I'll see you at 4." "+44712345678"`

## linux.zsh
Nothing at the moment :(

## freebsd.zsh
Nadda :(

## git.zsh
#### gint [\<name> \<url>\] (Git Init)
The `gint` command allows you to create a git repository within the current working directory, adds a `README.md` and `.gitignore`. Optionally you can also add a remote repository.
###### Create a repository:
`gint`
###### Create a repository and add remote
`gint origin https://example.com/username/repo`

#### ghint [\<api key name>:\<your value> … \] (Github Init)
The `ghint` command is very much the same as the `gint` comment except it will also create a Github repository using the passed arguments. `ghint` requires a minimum argument of `name:<value>`.
###### Create a repository with the name “My Amazing Repo”:
`ghint name:”My Amazing Repo”`
###### Create a private repository
`ghint name:”Private Parts” private:true`
###### Create a repository without a wiki and add a description
`ghint name:”Awesome Source” has_wiki:false description:”This is where I add all the awesome.”`

A whole list of accepted API Key Names can be found [here](https://developer.github.com/v3/repos/#create).

#### catt [\<commit message>\] (Commit All The Things)
`catt` allows you to commit every file in the current working repository. Once committed the log for that commit will be outputted.
###### Commit Everything:
`catt “ZOMG I COMMITTED EVERYTHING!”`

#### satt [\<stash name>\] (Stash All The Things)
`satt` will allow you to easily stash all the files in the current working repository with a given name. The output will be list of all files added to the stash.
###### Stash Everything:
`satt “stash-ah-ahhh”`
