DOTFILES = .vimrc .w3m .gitconfig .gitignore .inputrc .muttrc .screenrc .profile .exrc .bashrc.local .bash_profile .tmux.conf .ctags .gdbinit .minttyrc
TARGETS = $(addprefix $(HOME)/, $(DOTFILES))
LINK = ln -s
UNLINK = unlink

.PHONY: all clean

all : $(TARGETS)

$(HOME)/%: $(PWD)/%
	$(LINK) $< $@

clean :
	echo $(TARGETS) | xargs -n1 $(UNLINK)
