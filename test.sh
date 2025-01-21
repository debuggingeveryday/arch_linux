sudo pacman -Sy rust feh &&

git clone https://github.com/elkowar/eww &&
cd eww &&
cargo build --release --no-default-features --features x11 &&
cd target/release &&
chmod +x ./eww &&

cp ./eww /usr/local/bin &&

cd ~/ &&

git clone https://github.com/debuggingeveryday/widgets.git &&

echo "
$(cd $HOME/Desktop/widgets && ./eww.sh) &
" >> ~/.bash_profile &&

echp "
feh --bg-scale $HOME/Downloads/pexels-asadphoto-1320674.jpg
" >> ~/.bash_profile