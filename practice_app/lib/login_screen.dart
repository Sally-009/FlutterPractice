import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  String _uname = '';
  String _psw = '';

  void _handleLogin() {
    // ユーザー名とパスワードのバリデーションやログイン処理を行う

    // 成功したら次のページに行く
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // UserName
            TextField(
              onChanged: (value) {
                setState(() {
                  _uname = value;
                });
              },
              decoration: const InputDecoration(labelText: 'User Name'),
            ),
            // Password
            TextField(
              onChanged: (value) {
                setState(() {
                  _psw = value;
                });
              },
              decoration: const InputDecoration(labelText: 'パスワード'),
              obscureText: true, // パスワードを隠す
            ),
            const SizedBox(height: 20),
            // Submit
            ElevatedButton(
              // login関数の中身を書けば赤線解決すると思う
              onPressed: _handleLogin(),
              child: const Text("Done"),
            ),
          ],
        ),
      ),
    );
  }
}
