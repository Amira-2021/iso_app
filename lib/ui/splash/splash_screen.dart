import 'package:flutter/material.dart';
import 'package:iso_app/theme/bottons.dart';
import 'package:iso_app/theme/theme.dart';
import 'package:iso_app/ui/provider/register_screen_provider.dart';
import 'package:iso_app/ui/widgers/submit_button.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName="splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String customer = "Customer";
  String provider = "Provider";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(90),
            child:const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage("assets/images/logo.png",),
            ),
          ),
          Column(
            children: [
              Text("Quick Services App", style: Theme
                  .of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(
                  color: MyTheme.primaryColor
              ),),
              SizedBox(height: 20,),
              Text("Select Your Role", style: Theme
                  .of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(
                  color: MyTheme.primaryColor,
                  fontSize: 25
              ),),
              SizedBox(height: 50,),
              BottonsStyle(text: "Customer", click: customer,),
              SizedBox(height: 20,),
              Text("or", style: Theme
                  .of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(
                  color: MyTheme.primaryColor,
                  fontSize: 25
              ),),
              SizedBox(height: 25,),
              BottonsStyle(text: "Provider", click: provider,)
            ],
          )


        ],
      ),
    );
  }

 
}



