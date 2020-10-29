import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_app/datas/status_data.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Scaffold(
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 0.0,
                    child: ListTile(
                      leading: Stack(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                          ),
                          Positioned(
                            bottom: 0.0,
                            right: 1.0,
                            child: Container(
                              height: 20,
                              width: 20,
                              child: Icon(
                                Icons.add_circle,
                                color: Colors.green[700],
                                size: 15,
                              ),

                              /*___________________Comments_____________________
                              decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          ___________________Comments___________________________*/

                            ),
                          ),
                        ],
                      ),
                      title: Text("My Status",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle: Text("Tap to add status",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey)),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Recent Updates",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: ListView(
                      children: <Widget>[
                        new ListTile(
                          leading: new CircleAvatar(
                            foregroundColor: Colors.green[700],
                            backgroundColor: Colors.grey,
                          ),
                          title: Text(
                            "Pawan Kumar",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Just Now"),

                          /*___________________Comments_________________________
                           onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoryPageView())),
                          ___________________Comments___________________________*/

                        ),
                        ListTile(
                          leading: new CircleAvatar(
                            foregroundColor: Colors.green[700],
                            backgroundColor: Colors.grey,
                          ),
                          title: Text(
                            "Ajay",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Today, 20:16 PM"),
                        ),
                        ListTile(
                          leading: new CircleAvatar(
                            foregroundColor: Colors.green[700],
                            backgroundColor: Colors.grey,
                          ),
                          title: Text(
                            "Roy",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Today, 19.19 PM"),
                        ),
                        ListTile(
                          leading: new CircleAvatar(
                            foregroundColor: Colors.green[700],
                            backgroundColor: Colors.grey,
                          ),
                          title: Text(
                            "Arun",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Yesterday, 9 AM"),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Viewed Updates",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: stData.length,
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
                                  stData[i].name,
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            subtitle: new Container(
                              padding: EdgeInsets.only(top: 5.0),
                              child: new Text(
                                stData[i].time,
                                style: new TextStyle(
                                    color: Colors.grey, fontSize: 15.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Stack(
          children: <Widget>[
            Positioned(
              bottom: 80.0,
              right: 10.0,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(Icons.edit,color: Colors.green,),
                mini: true,
              ),
            ),
            Positioned(
             bottom: 10.0,
              right: 10.0,
              child:  FloatingActionButton(backgroundColor: Colors.white,
                child: Icon(Icons.camera_alt,color: Colors.green,),),
            ),
          ],
        ),
      ),
    );
  }
}
