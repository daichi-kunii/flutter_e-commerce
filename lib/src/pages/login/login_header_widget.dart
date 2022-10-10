import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: const AssetImage('assets/dog4.jpg'),
            height: size.height * 0.2),
        Text('LoginTitle', style: Theme.of(context).textTheme.headlineSmall),
        Text('LoginSubTitle', style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
