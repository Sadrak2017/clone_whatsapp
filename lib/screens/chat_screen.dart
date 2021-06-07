import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:didi/models/message_model.dart';
import 'package:didi/screens/home_screen.dart';
import 'package:didi/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:didi/util/Util.dart';
import 'package:get/get.dart';

class ChatPV extends StatelessWidget {
  ChatPV({this.data});
  final User data;
  Util popUp = new Util();
  @override
  Widget build(BuildContext context){
    print(popUp.itemSelecionado());
    int prevUserId;
    _inputSendMessage(){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: 70,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.photo),
              iconSize: 25,
              onPressed: () {},
              color: Theme.of(context).primaryColor,
            ),
            Expanded(
                child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Enviar mensagem...'
                ),
                textCapitalization: TextCapitalization.sentences,
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              iconSize: 25,
              onPressed: () {},
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      );
    }
    _chatBuilder(Message message, bool isMe, bool isSameUser){
      double marginHeight = isSameUser ? 1 : 10;
      if( !isMe ) {
        return Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80, 
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: marginHeight,),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5, 
                    ),
                  ],
                ),
                child: Text(message.text,
                  style: TextStyle(
                    color: Colors.white,
                  ),  
                ),
              ),
            ),
            !isSameUser ? 
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(message.time, 
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).primaryColor
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
                    radius: 15,
                    backgroundImage: AssetImage(message.sender.imageUrl),
                  ),
                ),    
              ],
            ) :
            Container(child: null,),
          ],
        );
      } else {
        return Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80, 
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: marginHeight),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5, 
                    ),
                  ],
                ),
                child: Text(message.text,
                  style: TextStyle(
                    color: Colors.black54,
                  ),  
                ),
              ),
            ),
            !isSameUser ?
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).primaryColor
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
                    radius: 15,
                    backgroundImage: AssetImage(message.sender.imageUrl),
                  ),
                ),
                SizedBox(width: 10,),
                Text(message.time, 
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ) :
            Container (child: null, ),
          ],
        );   
      }
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.dark,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 30.0, 
                  ),
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 20,
                    icon: FaIcon(FontAwesomeIcons.arrowLeft), 
                    onPressed: () => Get.offAll(HomeScreen()),
                  ),
                ),
                Container(  
                  padding: EdgeInsets.only(left: 1),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(data.imageUrl),
                  ),
                  margin: EdgeInsets.only(right: 12,),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                        blurRadius: 1, 
                      ),
                    ]
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(data.name, 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(data.isOnline ? 'Online' : 'Offline', 
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),      
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  iconSize: 18.0,
                  color: Colors.white70,
                  icon: FaIcon(FontAwesomeIcons.video),
                  onPressed:  () => {},
                ),
                IconButton(
                  iconSize: 18.0,
                  color: Colors.white70,
                  icon: FaIcon(FontAwesomeIcons.phone),
                  onPressed: () {},
                ),
                popUp.popUpPV(context),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.all(20),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final Message message = messages[index];
                final bool isMe = message.sender.id == data.id;
                final bool isSameUser = prevUserId == message.sender.id;
                prevUserId = message.sender.id;
                return _chatBuilder(message, isMe, isSameUser);
              } 
            ),           
          ),
          _inputSendMessage(),
        ],
      ),
    );
  }
}  