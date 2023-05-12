# adds a collaborator by github username to the repository in the current working directory
# required argument
# username
gh api -XPUT repos/:owner/:repo/collaborators/$1 -f permission=push
