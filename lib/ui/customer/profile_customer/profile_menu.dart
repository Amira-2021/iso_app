import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';

class ProfileMenu extends StatelessWidget {
  IconData icon;
  String title;
  ProfileMenu({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:10,
          vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 20,
          horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Icon(icon,color: MyTheme.backgroundColorOrange,),
          SizedBox(width: 20,),
          Text(title,style: Theme.of(context).textTheme.headline3,),
        ],
      ),
    );
  }
}
