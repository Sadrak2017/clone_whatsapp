import 'package:didi/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'util/Constantes.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ThemeColor,
      ),
      routes: <String, WidgetBuilder>{
        '/pubx': (BuildContext context) => new HomeScreen()
      },
      home: Splash(),
    )
  );
}

