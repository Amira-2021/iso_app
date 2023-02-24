import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';

class Header extends StatelessWidget {
   String header;
   Header(this.header);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(15),
      child: Text(header,
      textAlign: TextAlign.center,
      style:const TextStyle(
        fontSize: 28,
        color: MyTheme.primaryColor,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}
