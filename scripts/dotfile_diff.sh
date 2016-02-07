DOT_GIT=../.dotfiles
DOT=..

diff -bur $DOT_GIT $DOT | sed '/^Only.*/d' | vim -R -
