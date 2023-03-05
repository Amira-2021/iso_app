import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iso_app/ui/provider/profile_provider/components.dart';
int click=0;
Widget TimeItem({
  required String item,
  int index=0,
  required Function function
})
{
  return GestureDetector(
    onTap:(){
      function(index);
      click=index;
      print(index);
    },
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: MyTextStyle(text:item,align: TextAlign.center),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: index!=click ?Colors.white:Colors.grey[100]
      ),
    ),
  );
}