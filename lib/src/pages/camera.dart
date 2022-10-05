import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_ecommerce_app/src/pages/mainPage.dart';

class Camera extends StatefulWidget {
  @override
  _CameraPage createState() => _CameraPage();
}

class _CameraPage extends State<Camera> {
  File _image;
  final _picker = ImagePicker();

  Future getImageFromCamera() async {
    // カメラから写真を取得する部分
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        // 写真取得後に_imageを更新して表示している
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'カメラ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        // imageがnullだったら写真を撮る
        child: _image == null ? Text('写真を撮る') : Image.file(_image),
      ),
      // floatingActionButtonLocationでボタンの位置を指定します
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: getImageFromCamera,
        child: Icon(
          Icons.photo_camera,
          // カメラアイコンの色を指定
          color: Colors.white,
        ),
        // アイコンの背景の色を指定
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
