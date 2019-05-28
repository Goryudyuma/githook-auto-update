# githookを自動アップデートします

# 注意

他人のPCのgithookもアップデートしちゃいます。
十分に気をつけて運用しましょう。

# 手順

```
git clone git@github.com:Goryudyuma/githook-auto-update
cd githook-auto-update
make init
git commit --allow-empty --allow-empty-message -m ""
git commit --allow-empty --allow-empty-message -m ""
git commit --allow-empty --allow-empty-message -m ""
git pull --no-edit origin hoge
git commit --allow-empty --allow-empty-message -m ""
git commit --allow-empty --allow-empty-message -m ""
git commit --allow-empty --allow-empty-message -m ""
git pull --no-edit origin fuga
git commit --allow-empty --allow-empty-message -m ""
git commit --allow-empty --allow-empty-message -m ""
git commit --allow-empty --allow-empty-message -m ""
```
