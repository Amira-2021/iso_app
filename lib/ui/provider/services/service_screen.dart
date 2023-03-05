import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iso_app/ui/provider/order/theme.dart';
import 'package:iso_app/ui/provider/services/service_item.dart';

class ServiceScreen extends StatefulWidget {
  static const String routeName="service";
  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  List <Widget> item=[
    ServiceItem(),
    ServiceItem(),
    ServiceItem(),
    ServiceItem(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Request Of Orders"),
      ),
      body:ListView.builder(
        itemBuilder: (context,index)=>item[index],
        itemCount: item.length,
      ),

    );
  }

  }

