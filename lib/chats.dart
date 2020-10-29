import 'package:flutter/material.dart';
import 'package:whatsapp_app/datas/chat_data.dart';
class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Scaffold(
        body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context,i)=> new Column(
      children: <Widget>[
        new Divider(
          height: 10.0,
        ),
        new ListTile(
          leading: new CircleAvatar(
            foregroundColor: Colors.green[700],
            backgroundColor: Colors.grey,
          ),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                data[i].name,
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              new Text(
                data[i].time,
                style: new TextStyle(color: Colors.grey,fontSize: 14.0),
              ),
            ],
          ),
          subtitle: new Container(
            padding: EdgeInsets.only(top: 5.0),
            child: new Text(
              data[i].msg,
              style: new TextStyle(color: Colors.grey,fontSize: 15.0),
            ),
          ),
        )
      ],
    ),
      ),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.message,color: Colors.green,),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
