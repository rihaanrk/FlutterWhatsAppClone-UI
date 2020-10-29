import 'package:flutter/material.dart';
class ClData{
  final String name;
  final String time;
  final IconData icon1,icon2;
  ClData({this.name,this.time,this.icon1,this.icon2,});
}
List<ClData> clData=[
  new ClData(
    name:"Rahul",
    time:"Just now",
      icon1:Icons.videocam_rounded,
      icon2:Icons.transit_enterexit,),
  new ClData(
    name:"Roy",
    time:"(2) Today at 10.00 am",
    icon1:Icons.videocam_rounded,
    icon2:Icons.transit_enterexit,),
  new ClData(
    name:"Ajay",
    time:"(3) 22 October at 4.00 am",
    icon1:Icons.videocam_rounded,
    icon2:Icons.transit_enterexit,),
  new ClData(
    name:"Akhil",
    time:"15 October at 9.00 pm",
    icon1:Icons.videocam_rounded,
    icon2:Icons.transit_enterexit,),
  new ClData(
    name:"Pavan",
    time:"(6) 2 September at 8.55 am",
    icon1:Icons.videocam_rounded,
    icon2:Icons.transit_enterexit,),
  new ClData(
    name:"Sreekanth",
    time:"13 August at 2 pm",
    icon1:Icons.videocam_rounded,
    icon2:Icons.transit_enterexit,),
  new ClData(
    name:"Ajay",
    time:"1 June at 5 am",
    icon1:Icons.videocam_rounded,
    icon2:Icons.transit_enterexit,),
  new ClData(
    name:"Anoy",
    time:"(11) 17 January at 11 pm",
    icon1:Icons.videocam_rounded,
    icon2:Icons.transit_enterexit,),

];