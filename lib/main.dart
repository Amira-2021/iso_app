import 'package:flutter/material.dart';
import 'package:iso_app/ui/customer/profile_customer/profile_screen.dart';
import 'package:iso_app/ui/customer/register_screen.dart';
import 'package:iso_app/ui/first/first_screen.dart';
import 'package:iso_app/ui/provider/login_screen_provider/register_screen_provider.dart';
import 'package:iso_app/ui/provider/order/home_screen.dart';
import 'package:iso_app/ui/provider/order/theme.dart';
import 'package:iso_app/ui/provider/profile_provider/appointment_screen.dart';
import 'package:iso_app/ui/provider/profile_provider/profile_screen.dart';
import 'package:iso_app/ui/provider/services/service_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: HomeScreenProvider.routeName,
     routes: {
        FirstScreen.routeName:(_)=>FirstScreen(),
       HomeScreenProvider.routeName:(_)=>HomeScreenProvider(),
       RegisterScreenProvider.routeName:(_)=>RegisterScreenProvider(),
       AppointmentScreen.routeName:(_)=>AppointmentScreen(),
       ProfileOfProvider.routeName:(_)=>ProfileOfProvider(),
       RegisterScreen.routeName:(_)=>RegisterScreen(),
       ProfileScreenCustomer.routeName :(_)=>ProfileScreenCustomer(),
       ServiceScreen.routeName:(_)=>ServiceScreen()
     },
    theme: ProviderTheme.lightTheme,
    );
  }
}

