# Rails Record Place - 位置情報保存アプリケーション

## アプリケーション概要

Rails Record Place は、位置情報（緯度・経度）とコメントを記録・管理するためのRuby on Railsアプリケーションです。ユーザーは特定の場所の座標情報を保存し、後でその情報を閲覧・編集・削除することができます。

## 主な機能

### 🗺️ 位置情報の管理
- **位置情報の記録**: 緯度（lat）と経度（lon）を小数点形式で保存
- **コメント機能**: 各位置情報にテキストコメントを添付可能
- **一覧表示**: 記録された全ての位置情報を時系列順（新しい順）で表示
- **詳細表示**: 個別の位置情報レコードの詳細を確認
- **編集・削除**: 既存の位置情報レコードの修正・削除

### 🌐 API機能
- **RESTful API**: 全ての操作がJSON APIとしても利用可能
- **CORS対応**: クロスオリジンリクエストに対応
- **柔軟なアクセス**: WebブラウザからもAPIクライアントからも利用可能

## 技術仕様

### フレームワーク・言語
- **Ruby**: 2.6.0
- **Rails**: 5.2.2
- **データベース**: PostgreSQL
- **テンプレート**: HAML
- **テスト**: RSpec

### 主要なGem
- `pg`: PostgreSQLデータベース接続
- `haml-rails`: HAMLテンプレートサポート
- `rack-cors`: CORS対応
- `fast_jsonapi`: 高速JSON API
- `rspec-rails`: テストフレームワーク

## データベース構造

### place_records テーブル
| カラム名 | データ型 | 説明 |
|---------|---------|-----|
| id | bigint | 主キー（自動生成） |
| lat | float | 緯度 |
| lon | float | 経度 |
| comment | text | コメント |
| created_at | datetime | 作成日時 |
| updated_at | datetime | 更新日時 |

## API エンドポイント

### HTTP エンドポイント一覧
```
GET    /place_records          # 位置情報一覧取得
POST   /place_records          # 新しい位置情報作成
GET    /place_records/new      # 新規作成フォーム表示
GET    /place_records/:id/edit # 編集フォーム表示
GET    /place_records/:id      # 特定の位置情報取得
PATCH  /place_records/:id      # 位置情報更新
PUT    /place_records/:id      # 位置情報更新
DELETE /place_records/:id      # 位置情報削除
```

### JSON API の使用例

#### 位置情報一覧取得
```bash
GET /place_records.json
```

#### 新しい位置情報作成
```bash
POST /place_records.json
Content-Type: application/json

{
  "place_record": {
    "lat": 35.6762,
    "lon": 139.6503,
    "comment": "東京駅"
  }
}
```

## セットアップ方法

### Dockerを使用する場合（推奨）
```bash
# リポジトリをクローン
git clone https://github.com/arihh/rails_record_place.git
cd rails_record_place

# Dockerコンテナを起動
docker-compose up
```

### 手動セットアップ
```bash
# 依存関係をインストール
bundle install

# データベースを作成・マイグレーション
rails db:create
rails db:migrate

# サーバーを起動
rails server
```

アプリケーションは http://localhost:3000 でアクセス可能になります。

## 使用場面

このアプリケーションは以下のような用途に活用できます：

- **観光地・名所の記録**: 訪れた場所の座標とメモを保存
- **位置ベースのメモ帳**: 特定の場所に関連する情報を記録
- **フィールドワーク**: 調査地点の座標と観察内容を記録
- **配送・営業**: 訪問先の位置情報と備考を管理
- **IoTデバイス連携**: センサーデータと位置情報の組み合わせ保存

## 開発・テスト

### テストの実行
```bash
# RSpecテストを実行
bundle exec rspec
```

### コードスタイルチェック
```bash
# Rubocopによるコードチェック
bundle exec rubocop
```

## セキュリティ考慮事項

- CSRF保護がcreateアクションで無効化されています（API利用のため）
- CORS設定により全てのオリジンからのアクセスが許可されています
- 本番環境では適切なセキュリティ設定の見直しを推奨します

## ライセンス

このプロジェクトのライセンスについては、リポジトリの設定を確認してください。
