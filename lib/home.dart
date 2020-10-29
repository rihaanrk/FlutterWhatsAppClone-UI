import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_app/camera.dart';
import 'package:whatsapp_app/chats.dart';
import 'package:whatsapp_app/status.dart';
import 'package:whatsapp_app/calls.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    var items=List<String>.generate(10, (i) => "Contact $i");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          elevation: 0.7,
          title: Text('WhatsApp',style: TextStyle(color: Colors.white,fontSize: 20.0,),),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
          actions: <Widget>[
            Icon(Icons.search),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            Icon(Icons.more_vert),
          ],
        ),
        body: TabBarView(
          children: [
            Camera(),
          Chats(),
          Status(),
            Calls(),
          ],
        ),
      ),
      ),
    );
  }
}
