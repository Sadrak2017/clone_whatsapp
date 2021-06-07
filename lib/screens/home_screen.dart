import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:didi/util/Constantes.dart';
import 'package:flutter/material.dart';
import 'package:didi/util/Util.dart';
import 'conversas_screen.dart';
import 'chamadas_screen.dart';
import 'camera_screen.dart';
import 'status_screen.dart';

class HomeScreen extends StatelessWidget {
  Util popUp = new Util();
  @override
  Widget build(BuildContext context){  
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0,
        title: Text('Mensageiro',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          popUp.popUpHome(context),
        ],
      ),
      body: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).primaryColor,
              constraints: BoxConstraints.expand(height: 50),
              child: new TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                tabs: 
                  [
                    new Container(
                      width: 12.0,
                      child: new Tab( 
                        icon: FaIcon(FontAwesomeIcons.camera, size: 19,),
                      ),
                    ),
                    new Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Tab(
                       icon: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text("MENSAGENS"),
                           CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9,
                              child: Text("10",
                                style: TextStyle(
                                  color: ThemeColor,
                                  fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                         ],
                       ),
                      ),
                    ),
                    new Container(
                      width: MediaQuery.of(context).size.width * 0.22,
                      child: Tab(text: "NOVIDADES"),
                    ),
                    new Container(
                      width: MediaQuery.of(context).size.width * 0.19,
                      child: Tab(text: "CHAMADAS"),
                    ),
                  ]
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                    /** Begin page Camera */
                    CameraScreen(),
                    /** End page Camera */

                    /** Begin page Conversas */
                    ConversasScreen(),
                    /** End page Conversas */

                    /** Begin page Status */
                    StatusScreen(),
                    /** End page Status */

                    /** Begin page Chamadas */
                    ChamadasScreen(),
                    /** End page Chamadas */
                  ]
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
