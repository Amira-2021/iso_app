import 'package:flutter/material.dart';

class RegisterScreenProvider extends StatelessWidget {
   static const String routeName="registerProvider";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Now Provider",
        style: Theme.of(context).textTheme.headline4?.copyWith(
          color: Colors.white,
          fontSize: 21
        ),),
        centerTitle: true,
      ),
      body:Column(
        children: [

        ],
      )

    );
  }
}
