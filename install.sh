termux-setup-storage
chmod +x run.sh
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/apt/termux-main stable main@' $PREFIX/etc/apt/sources.list
apt install wget python -y
pip install -i https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple protobuf dataclasses_json requests
wget https://gh-proxy.com/https://github.com/nmyjj-web/freedom/raw/refs/heads/main/build.zip
unzip -o build.zip
mkdir ./storage/shared/ppSR/
mkdir ./storage/shared/ppSR/misc/
cp ./build/misc/ ./storage/shared/ppSR/ -rf