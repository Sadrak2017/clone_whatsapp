import 'package:didi/models/message_model.dart';
import 'package:didi/util/Constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'chat_screen.dart';

class ConversasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 8.0,),
          Container(
            height: MediaQuery.of(context).size.height * 0.815,  
            width: double.infinity,  
            color: Colors.white70,
            child: ListView.builder(
              itemCount: chats.length, 
              itemBuilder: (BuildContext context, int index){
                final Message chat = chats[index];
                return GestureDetector(
                    onTap: () => Get.to(ChatPV(data: chat.sender)),
                    child: Container(
                    padding: ThemePading,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 2.0, right: 2.0, top: 2.0, bottom: 0.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    width: 2,
                                    color: chat.unread ? ThemeColorIcon : Colors.blueGrey[500]
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
                                backgroundImage: AssetImage(chat.sender.imageUrl),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.75,
                              padding: EdgeInsets.only(left: 20,),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(chat.sender.name, 
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          chat.sender.isOnline ?  
                                            Container(
                                              margin: const EdgeInsets.only(left: 5, top: 3),
                                              width: 7,
                                              height: 7,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Theme.of(context).primaryColor,
                                              ),
                                            ) 
                                          : 
                                            Container(
                                              margin: const EdgeInsets.only(left: 5, top: 3),
                                              width: 7,
                                              height: 7,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.redAccent,
                                              )
                                            ), 
                                        ],
                                      ),
                                      Container(
                                        alignment: Alignment.bottomRight,
                                        width: 50,
                                        child: Text(chat.time, 
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: chat.unread ? ThemeColorIcon : Colors.blueGrey[700],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.62,
                                          child: Text(chat.text,
                                            style: TextStyle(
                                              fontSize: 13.5,
                                               fontWeight: FontWeight.w400,
                                              color: Colors.black54
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                        chat.unread ? Container(
                                          alignment: Alignment.bottomCenter,
                                          padding: EdgeInsets.only(right: 4),
                                          child: CircleAvatar(
                                            backgroundColor: ThemeColorIcon,
                                            radius: 11,
                                            child: Text("3",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                 fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ) : SizedBox(),
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeColorIcon,
        child: Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}