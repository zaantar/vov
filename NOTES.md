# git subtrees

http://blogs.atlassian.com/2013/05/alternatives-to-git-submodule-git-subtree/

Initialize:

1. git remote add -f riccardos-builder git@bitbucket.org:riccardos/builder.git
2. git subtree add --prefix externals/riccardos-builder riccardos-builder new_files --squash
3. git remote add -f vv https://github.com/bradp/vv.git
4. git subtree add --prefix externals/vv vv master --squash

Update:

1. git fetch riccardos-builder new_files
2. git subtree pull --prefix externals/riccardos-builder/ riccardos-builder new_files --squash
3. git fetch vv master
4. git subtree pull --prefix externals/vv vv master --squash

