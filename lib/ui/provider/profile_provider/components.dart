import 'dart:ui';
import 'package:flutter/material.dart';

Widget ThreeIcons (context ,{ Color? color,
Color? colorIcon ,
IconData? icon ,
String? fun }) {
    return InkWell(
      onTap: (){
          Navigator.pushNamed(context, fun!);
      } ,
      child: CircleAvatar(
        radius: 25,
        backgroundColor:color,
        child: Icon(icon,color: colorIcon,),
      ),
    );
  }
Widget FollowTapsRow({
  String? numOfFollow,
  String? onClick,
  context,
  required String title
}){
  return  GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, onClick!);
      },
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey[200],
      width: 100,
      height: 75,
      child: Column(
        children: [
          MyTextStyle(text:numOfFollow==null? "":"${numOfFollow}",fontSize: 17,lines: 1),
          SizedBox(height: 5,),
          MyTextStyle(text: title,fontSize: 17),
        ],
      ),
    ),
  );
}

Widget MyTextStyle({
    required String text ,
    double fontSize =23.0,
     bool bold = true,
    Color color=Colors.black,
    int lines=4,
    TextAlign align =TextAlign.start
  })
  {
    return Text(text,
      textAlign: align,
      maxLines: lines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: bold? FontWeight.bold :FontWeight.normal,


    ),);
  }

  Widget bottom(context,{
   required String title,
   required String route,

}){
  return   Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          child: Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child:Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                )),
          ),
        ),
      ),
    ],
  );
  }


  Widget payment (
      String UrlImage
      )
  {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child:Image.asset(UrlImage,fit: BoxFit.cover),
    );
  }
