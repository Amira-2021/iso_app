import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iso_app/ui/customer/profile_customer/components.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName ="profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text("Profile",
        style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Body(),
    );
  }
}
