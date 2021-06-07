import 'package:image_picker/image_picker.dart';
import 'package:didi/util/Constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class CameraScreen extends StatefulWidget {
  @override
  _CameraConnectState createState() => _CameraConnectState();
}
 
class _CameraConnectState extends State<CameraScreen> {
  File image;
 
  //connect camera
  cameraConnect() async {
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return cameraConnect();
  }
}