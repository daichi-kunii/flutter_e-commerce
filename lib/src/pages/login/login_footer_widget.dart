import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/pages/register.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
                image: AssetImage('assets/google_log.png'), width: 20.0),
            onPressed: () {},
            label: const Text('SignInWithGoogle'),
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyAuthPage(),
                ));
          },
          child: Text.rich(
            TextSpan(
                text: 'DontHaveAnAccount',
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(text: 'Signup', style: TextStyle(color: Colors.blue))
                ]),
          ),
        ),
      ],
    );
  }
}
