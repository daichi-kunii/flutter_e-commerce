import 'dart:io';
// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:flutter_ecommerce_app/src/pages/profile/profile_user.dart';
import 'package:flutter_ecommerce_app/src/pages/profile/profile_user_preferences.dart';
import 'package:flutter_ecommerce_app/src/pages/profile/profile_appbar_widget.dart';
import 'package:flutter_ecommerce_app/src/pages/profile/profile_button_widget.dart';
import 'package:flutter_ecommerce_app/src/pages/profile/profile_numbers_widget.dart';
import 'package:flutter_ecommerce_app/src/pages/profile/profile_widget.dart';
import 'package:flutter_ecommerce_app/src/pages/profile/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  ProfileUser user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    child:
    Builder(
      builder: (context) => Scaffold(
        // appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              // isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {},
            ),
          ],
        ),
      ),
    );
  }
}
