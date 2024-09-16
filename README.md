# 円周率
ガウス=ルジャンドルのアルゴリズムを使って円周率を計算します。FMLIBと仲良くなるために書きました。

※値を表示するときに四捨五入されるので気をつけてください。

## FMLIBについて
[FMLIB](http://dmsmith.lmu.build/)とはDavid M. Smith が作成したFortran 90用の多倍長計算パッケージである。

FMLIBの導入について<br>
この[ファイル](http://dmsmith.lmu.build/FM1.4/FM_files.zip)をダウンロードして、展開する。そして、ディレクトリの中にある
- fmsave.f95
- fm.f95
- fmzm90.f95

がライブラリの本体。コンパイルは
```
$ gfortran fmsave.f95 -c -O3
$ gfortran fm.f95 -c -O3
$ gfortran fmzm90.f95 -c -O3
$ gfortran TestFM.f95 -c -O3
$ gfortran fm.o fmsave.o fmzm90.o TestFM.o -o TestFM
```
こんな感じ。

## 参考
- [ガウス＝ルジャンドルのアルゴリズム](https://ja.wikipedia.org/wiki/%E3%82%AC%E3%82%A6%E3%82%B9%EF%BC%9D%E3%83%AB%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%89%E3%83%AB%E3%81%AE%E3%82%A2%E3%83%AB%E3%82%B4%E3%83%AA%E3%82%BA%E3%83%A0)
