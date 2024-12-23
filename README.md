# DLITE3 最終報告書

## 動作環境
- Ubuntu22.04 LTSで作成
  - その他OSは動作未保障
- lualatex

## 報告書の執筆
### ディレクトリ構成
※ 一部省略
```
images
|- sample.jpg
pages
|- abstract
  |- abstract.tex
|- title
  |- title.tex
|- report
  |- report.tex
  |- report.bib
main.tex
main.pdf
build.sh
```
### 表紙の編集
グループメンバーなど表紙を編集するには、title.texを変更

### 本文の執筆
report.texに記載。<br />
参考文献を使うにはreport.bibに追加して、report.texでciteコマンドを使い引用する。<br />
画像を使うにはimagesに画像を保存して呼び出す。

## コンパイル方法
```sh
./build.sh
```
※ 上記のコマンドが権限の問題で使えない場合
```sh
chmod +x ./build.sh
```
コマンド実行後main.texと同階層にmain.pdfが生成される
