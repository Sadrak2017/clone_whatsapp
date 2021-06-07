import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dashed_container/dashed_container.dart';
import 'package:didi/models/status_model.dart';
import 'package:didi/util/Constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'chat_screen.dart';

class StatusScreen extends StatelessWidget {
  final Status me = status[7];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height:  MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(height: 8.0,),
            Container(  
              child: GestureDetector(
                onTap: () => Get.to(ChatPV(data: me.sender)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: ThemePading,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              border: Border.all(
                                width: 2,
                                color: ThemeColorStatus,
                              ),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5, 
                                ),
                              ]
                            ),
                            child: CircleAvatar(
                              radius: 32,
                              foregroundColor: Colors.black12,
                              backgroundImage: AssetImage(me.imageUrl),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.73,
                            padding: EdgeInsets.only(left: 20,),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.65,
                                          child: Text("Meu Status", 
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Icon(
                                        FontAwesomeIcons.ellipsisH,
                                        color: Theme.of(context).primaryColor,
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("há 20 minutos, 22:08",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 3.0),
                            alignment: Alignment.bottomLeft,
                            child: Text("Atualizações recentes",
                              style: TextStyle(
                                fontSize: 15,
                                color: Theme.of(context).primaryColor
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.69,
              width: MediaQuery.of(context).size.width,
              color: Colors.white70,
              child: ListView.builder(
                itemCount: status.length, 
                itemBuilder: (BuildContext context, int index){
                  final Status _status = status[index];
                  if(index != 7){
                    return GestureDetector(
                      onTap: () => Get.to(ChatPV(data: _status.sender)),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: ThemePading,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow:[
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5, 
                                      ),
                                    ],
                                  ),
                                  child: DashedContainer(
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: CircleAvatar(
                                        radius: 32,
                                        foregroundColor: Colors.white,
                                        backgroundImage: AssetImage(_status.imageUrl),
                                      ),
                                    ),
                                    dashColor: ThemeColorStatus,
                                    boxShape: BoxShape.circle,
                                    dashedLength: 20.0, // Quantidade de status
                                    blankLength: 4,
                                    strokeWidth: 2.5, // Size boder
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.75,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(left: 7.0),
                                                width: MediaQuery.of(context).size.width * 0.58,
                                                child: Text(_status.sender.name, 
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Text("3", style: TextStyle(color: ThemeColor),),
                                                  Icon(Icons.photo_library, color: ThemeColor, size: 18,),
                                                  SizedBox(width: 10.0,),
                                                  Text("2", style: TextStyle(color: ThemeColor),),
                                                  Icon(Icons.video_library, color: ThemeColor, size: 18,)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 7.0),
                                        alignment: Alignment.bottomLeft,
                                        child: Text(_status.time,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black54
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              indent: MediaQuery.of(context).size.width * 0.20,
                              color: Colors.black26
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment(1.0, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 45,
              child: FloatingActionButton(
                backgroundColor: Colors.blueGrey[50],
                child: Icon(Icons.edit, color: Colors.black54),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 18.0,),
            FloatingActionButton(
              backgroundColor: ThemeColorIcon,
              child: Icon(Icons.camera_alt),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );  
  }
}