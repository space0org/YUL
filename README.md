# YUL Blockchain

YULは、Bitcoin SV v1.1.0をベースにした新しいブロックチェーンです。BSVのセキュリティパラメータと設定を完全に継承しています。

## 概要

YULブロックチェーンは、Bitcoin SVのコードベースを活用し、安全で拡張性の高いマイニングプラットフォームを提供します。

## 特徴

- Bitcoin SV v1.1.0ベース
- BSVメインネットと同一のセキュリティパラメータ
- クロスプラットフォーム対応（Mac、Windows、Ubuntu）
- 組み込みの監視・管理ツール

## マイナー向けクイックスタート

1. Docker と Docker Compose をインストール:
   ```bash
   # Ubuntu
   sudo apt-get update
   sudo apt-get install docker.io docker-compose

   # Mac
   brew install docker docker-compose

   # Windows
   # Docker Desktop をインストール
   ```

2. YULリポジトリのクローン:
   ```bash
   git clone https://github.com/space0org/YUL.git
   cd YUL
   ```

3. 設定ファイルの準備:
   ```bash
   cp config/templates/bitcoin.conf.template config/bitcoin.conf
   cp .env.template .env
   ```

4. 環境設定の編集:
   ```bash
   # .env ファイルを編集
   nano .env
   ```

5. ノードの起動:
   ```bash
   docker-compose up -d
   ```

6. マイニングの開始:
   ```bash
   docker exec yul-node1 bitcoin-cli generate 1
   ```

## 設定

詳細な設定については [設定ガイド](docs/setup/CONFIGURATION.md) を参照してください。

## パラメータ

すべてのパラメータはBitcoin SV v1.1.0に準拠しています。
詳細は [パラメータドキュメント](docs/setup/PARAMETERS.md) を参照してください。

## モニタリング

- ダッシュボード: http://localhost:3010
- RPC API: http://localhost:8332
- MAPI: http://localhost:9014

## セキュリティ

すべてのセキュリティ設定はBSV v1.1.0メインネットの設定と同一です。

## ライセンス

このプロジェクトはMITライセンスの下で提供されています。

