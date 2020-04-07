# 使い方
```
# コンテナ起動
$ docker-compose up -d --build

# コンテナ内でansible-playbookを実行
$ docker exec -it ansible_test ansible-playbook developer_setup.yml
```

- ansibleの内容
  - gitをソースコードからインストール
  - バージョンを確認
  - gitをアンインストール

# 参考
## AWS CloudFormation（未使用）
- https://github.com/okubo-t/aws-cloudformation

## ソースコードからインストールしたgitのアンインストール
- https://qiita.com/shifumin/items/288f486a0e41439b9eb0
