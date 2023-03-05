import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';
import 'package:iso_app/ui/provider/services/service_screen.dart';
import 'package:iso_app/ui/provider/order/theme.dart';
import 'package:iso_app/ui/provider/services/service_screen.dart';
import 'package:iso_app/ui/provider/setting/setting_screen.dart';

class HomeScreenProvider extends StatefulWidget {
  static const String routeName="homeprovider";
  @override
  State<HomeScreenProvider> createState() => _HomeScreenProviderState();
}

class _HomeScreenProviderState extends State<HomeScreenProvider> {

   List <Widget> screens=[ServiceScreen(),SettingScreen()];
   int onTap=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[onTap],
      bottomNavigationBar:BottomNavigationBar(
         currentIndex: onTap,
        onTap: (click){
          onTap=click;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(backgroundColor: ProviderTheme.defaultColorGreen,
              icon: Icon(Icons.reorder),label: "Orders"),
          BottomNavigationBarItem(backgroundColor: ProviderTheme.defaultColorGreen,
              icon: Icon(Icons.settings),label: "Settings"),
        ],
      ),
    );
  }

}
