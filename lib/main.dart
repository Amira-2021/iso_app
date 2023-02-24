import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';
import 'package:iso_app/ui/customer/profile_customer/profile_screen.dart';
import 'package:iso_app/ui/customer/register_screen.dart';
import 'package:iso_app/ui/provider/register_screen_provider.dart';
import 'package:iso_app/ui/splash/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: ProfileScreen.routeName,
     routes: {
        SplashScreen.routeName:(_)=>SplashScreen(),
       RegisterScreenProvider.routeName:(_)=>RegisterScreenProvider(),
       RegisterScreen.routeName:(_)=>RegisterScreen(),
       ProfileScreen.routeName :(_)=>ProfileScreen(),
     },
    theme: MyTheme.light,
    );
  }
}

