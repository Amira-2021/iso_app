import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';
import 'package:iso_app/ui/customer/register_screen.dart';
import 'package:iso_app/ui/provider/register_screen_provider.dart';

class BottonsStyle extends StatefulWidget {
  String  text;
  String click;
  BottonsStyle({height,width,required this.text,required this.click});
  @override
  State<BottonsStyle> createState() => _BottonsStyleState();
}

class _BottonsStyleState extends State<BottonsStyle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed:(){
          setState(() {
          });
         widget.click=="Customer"?OpenScreenCustomer():
              OpenScreenProvider();
        },
        child:Text("Sign As ${widget.text}",
          style: TextStyle(
            fontSize: 20
          ),

        ),
        style: Theme.of(context).elevatedButtonTheme.style,
      ),
    );
  }
  void OpenScreenProvider(){
    setState(() {
    });

    Navigator.pushNamed(context, RegisterScreenProvider.routeName);
  }
  void OpenScreenCustomer(){
    setState(() {
    });
    Navigator.pushNamed(context, RegisterScreen.routeName);
  }
}
