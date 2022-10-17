import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/pages/login/login_header_widget.dart';
import 'package:flutter_ecommerce_app/src/pages/login/login_footer_widget.dart';
import 'package:flutter_ecommerce_app/src/pages/login/login_form_widget.dart';

class LoginScreen extends StatefulWidget {
  // const LoginScreen({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LoginHeaderWidget(),
                // LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
