import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SplashController();
  }
}

class SplashController extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<SplashController> {
  startTime() async {
    var _duration = new Duration(seconds: 4); /** Duração da Splash */
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Get.offNamed("/pubx");
  }

  @override
  void initState(){
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xF022262B),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.92,
                alignment: Alignment(0.0, 0.0),
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 110.0,
                ),
              ),
              Container(
                alignment: Alignment(0.0, 1.0),
                child: Column(
                  children: <Widget>[
                    Text("Copyright ©",
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text("Mesageiro",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Tantular',
                        fontSize: 18.0,  
                      ),
                    ),
                  ]
                ),    
              ),
            ],
          ),
        ),
      ),
    );
  }
}