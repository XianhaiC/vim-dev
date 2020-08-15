FROM archlinux
RUN pacman -Syyu --needed --noconfirm && \
        pacman -S --needed --noconfirm zsh vim git nodejs npm ripgrep
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
CMD ["/bin/sh", "-c"]
