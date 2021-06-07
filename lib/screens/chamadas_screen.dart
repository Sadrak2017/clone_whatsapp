import 'package:didi/models/message_model.dart';
import 'package:didi/util/Constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'chat_screen.dart';

class ChamadasScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8,),
        color: Colors.white70,
        child: ListView.builder(
          itemCount: chats.length, 
          itemBuilder: (BuildContext context, int index){
            final Message chat = chats[index];
            return GestureDetector(
                onTap: () => Get.to(ChatPV(data: chat.sender)),
                child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 2,
                ),
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
                          child: CircleAvatar(
                            radius: 32,
                            foregroundColor: Colors.black12,
                            backgroundImage: AssetImage(chat.sender.imageUrl),
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
                                        width: MediaQuery.of(context).size.width * 0.62,
                                        child: Text(chat.sender.name, 
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
                                      chat.video ? 
                                        Icons.phone : Icons.videocam,
                                        color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Row(
                                  children: <Widget>[
                                    chat.video ? 
                                      Icon(
                                        Icons.trending_down,
                                        color: Colors.redAccent,
                                      ) 
                                    : 
                                      Icon(
                                        Icons.trending_up,
                                        color: Colors.greenAccent,
                                      ),
                                    Text(
                                      chat.phone,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ],
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
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment(1.0, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 42,
              child: FloatingActionButton(
                backgroundColor: Colors.blueGrey[50],
                child: Icon(Icons.video_call, color: Colors.blueGrey[800]),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 18.0,),
            FloatingActionButton(
              backgroundColor: ThemeColorIcon,
              child: Icon(Icons.phone_forwarded),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}