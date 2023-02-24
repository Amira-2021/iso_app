import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';
import 'package:iso_app/ui/customer/profile_customer/profile_menu.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage:AssetImage("assets/images/logo.png"),
                ),
                Positioned(
                  bottom: 0,
                   right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 20,
                    child: Container(
                      child: IconButton(icon: Icon(Icons.camera_alt,color: MyTheme.backgroundColorOrange,),
                        onPressed: (){},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: 200,
              child: Text("Amira Ahmed",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
              maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            ProfileMenu(icon: Icons.person, title: "My Account"),
            ProfileMenu(icon: Icons.call, title: "Calls"),
            ProfileMenu(icon: Icons.chat, title: "Chats"),
            ProfileMenu(icon: Icons.location_on, title: "My Location"),
            ProfileMenu(icon: Icons.logout, title: "Logout"),


        ],
      ),
    );
  }
}
