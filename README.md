# README

GraphQL を使ってみるために簡単な API を作成しました。

### 使い方

1. このリポジトリをクローン
2. データベースの作成

```sh
rails db:create
rails db:migrate
rails db:seed
```

3. プロジェクトを起動

```sh
rails server
```

4. ブラウザ上の GraphQL IDE にアクセス\
   [http://localhost:3000/graphiql](http://localhost:3000/graphiql)

5. Query を実行

### Query の実行例

```js
query {
  users {
    id
    name
    email
    totalPosts
  }
}
```

```js
{
  "data": {
    "users": [
      {
        "id": "1",
        "name": "user0",
        "email": "user0@example.com",
        "totalPosts": 3
      },
      {
        "id": "2",
        "name": "user1",
        "email": "user1@example.com",
        "totalPosts": 3
      },
      {
        "id": "3",
        "name": "user2",
        "email": "user2@example.com",
        "totalPosts": 3
      }
    ]
  }
}
```

```js
query {
  user (id: 1) {
    id
    name
    email
    totalPosts
  }
}
```

```js
{
  "data": {
    "user": {
      "id": "1",
      "name": "user0",
      "email": "user0@example.com",
      "totalPosts": 3
    }
  }
}
```

```js
mutation {
  createUser(
    input:{
      name: "user"
      email: "example@example.com"
    }
  ) {
    user{
      id
      name
      email
      totalPosts
    }
  }
}
```

```js
{
  "data": {
    "createUser": {
      "user": {
        "id": "13",
        "name": "user",
        "email": "example@example.com",
        "totalPosts": 0
      }
    }
  }
}
```
