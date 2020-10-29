import 'package:flutter/material.dart';
import 'package:whatsapp_app/datas/call_data.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Scaffold(
        body: ListView.builder(
          itemCount: clData.length,
          itemBuilder: (context, i) => new Column(
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
                      clData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Icon(
                      clData[i].icon1,
                      color: Colors.green,
                    ),
                  ],
                ),
                subtitle: Row(
                  children: <Widget>[
                    Icon(
                      clData[i].icon2,
                      size: 23.0,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      clData[i].time,
                      style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(Icons.add_ic_call_rounded,color: Colors.green,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
