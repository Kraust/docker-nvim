from ubuntu:18.04
MAINTAINER Kraust <secretdragoon@gmail.com>

RUN apt-get update && apt-get install -y \
    build-essential curl git ninja-build \
    gettext libtool libtool-bin autoconf \
    automake cmake pkg-config unzip \
    software-properties-common

#RUN git clone https://github.com/neovim/neovim.git /root/neovim
#RUN cd /root/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && make install
# Install Neovim
RUN add-apt-repository ppa:neovim-ppa/stable
RUN apt-get update && apt-get install -y neovim

RUN mkdir -p /root/.config/nvim/

#vim-plug
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN nvim -i NONE -c PlugInstall -c quitall > /dev/null 2>&1

COPY init.vim /root/.config/nvim/init.vim
COPY entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]

EXPOSE 10101
