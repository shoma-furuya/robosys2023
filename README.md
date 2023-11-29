# plusコマンド
![test](https://github.com/shoma-furuya/robosys2023/actions/workflows/test.yml/badge.svg)


## インストール方法
以下のコマンドでインストール可能
```
$ git clone https://github.com/shoma-furuya/robosys2023.git
```
インストール後、以下のコマンドでディレクトリを移動すると、plusコマンドが使用可能
```
$ cd robosys2023
```


## 用途
* 標準入力から読み込んだ数字を足すソフト


## 使用方法
* 数字が格納されているファイルを標準入力すると、読み込んだ数字を足した数字が標準出力される

#### 例
```
$ seq 5 | ./plus
```
上記のコマンドを実行し、plusコマンドに1~5までの連続した数字を標準入力すると、その数字を足した
```
$ 15
```
が標準出力される


## 必要なソフトウェア
* Python
  * テスト済み: 3.7〜3.10


## テスト環境
* Ubuntu 20.04


## ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    * [ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Shoma Furuya
