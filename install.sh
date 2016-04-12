#/usr/bin/zsh

cd
git clone --recursive https://github.com/byzhang/prezto.git "${ZDOTDIR:-.}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-.}"/.zprezto/runcoms/^README.md(.N); do
  ln -sf "$rcfile" "${ZDOTDIR:-.}/.${rcfile:t}"
done

chsh -s /usr/bin/zsh
