# gatsby-cleanup

This is a repository where I work on my clean-up script for Gatsby.

To use this, I recommend that you put this in your home directory 
and create a link in your environment file so you can call it 
from your git directory. For example, here's what I did:

1. Opened ~.zshrc
2. Inserted the following at the end of the file:
     alias fixit="/Users/rsiebens/fixit.sh"
3. Closed the file.
4. Applied the changes with this command:
     source ~/.zshrc

To start a cleanup, go to your git directory and type fixit

NOTE: This currently only works in the docs-website directory.

