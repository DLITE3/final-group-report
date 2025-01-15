#!/bin/bash
set -e  # エラー時にスクリプトを停止
set -x  # 実行するコマンドを出力

mkdir -p build
lualatex -output-directory=build main.tex || exit 1
biber build/main || exit 1
lualatex -output-directory=build main.tex || exit 1
mendex build/main || exit 1
lualatex -output-directory=build main.tex || exit 1

# 不要ファイルの削除
rm -f build/*.aux build/*.bbl build/*.bcf build/*.blg build/*.idx build/*.ilg build/*.ind build/*.lof build/*.log build/*.lot build/*.out build/*.run.xml build/*.toc
