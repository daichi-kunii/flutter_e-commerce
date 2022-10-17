import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ecommerce_app/src/pages/mainPage.dart';

class LoginForm extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  String login_Email = ""; // 入力されたメールアドレス
  String login_Password = ""; // 入力されたパスワード
  String infoText = ""; // ログインに関する情報を表示

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: 'Email',
                  hintText: 'Email',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {}, child: const Text('ForgetPassword')),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  // ここから自作Qiita参照https://qiita.com/smiler5617/items/71d015081306dc140170
                  try {
                    // メール/パスワードでログイン
                    UserCredential _result =
                        await _auth.signInWithEmailAndPassword(
                      email: login_Email,
                      password: login_Password,
                    );

                    // ログイン成功
                    User _user = _result.user; // ログインユーザーのIDを取得

                    // Email確認が済んでいる場合のみHome画面へ
                    if (_user.emailVerified) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(),
                            //(user_id: _user.uid, auth: _auth),
                          ));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(),
                            // email: login_Email,
                            // password: login_Password,
                            // from: 2)),
                          ));
                    }
                  } on AssertionError catch (e) {
                    print('Error: ${e.message}');
                  }
                },
                child: Text('Login'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
