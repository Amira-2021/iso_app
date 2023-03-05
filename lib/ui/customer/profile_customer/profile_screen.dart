import 'package:flutter/material.dart';
import 'package:iso_app/ui/first/first_screen.dart';
import 'package:iso_app/ui/provider/profile_provider/appointment_screen.dart';
import 'package:iso_app/ui/provider/profile_provider/components.dart';
import 'package:iso_app/ui/provider/profile_provider/time_item.dart';

class ProfileScreenCustomer extends StatefulWidget {
  static const String routeName = "profileOfCustomer";

  @override
  State<ProfileScreenCustomer> createState() => _ProfileScreenCustomerState();
}

class _ProfileScreenCustomerState extends State<ProfileScreenCustomer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/images/photo.jpg"),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: 200,
                    child: MyTextStyle(text: "Amira Ahmed", fontSize: 22.0,align: TextAlign.center,lines: 1),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: 200,
                    child: MyTextStyle(text: "Luxor , Cairo", fontSize: 22.0,align: TextAlign.center,lines: 1),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ThreeIcons(context,
                          color: Colors.green[800]!,
                          icon: Icons.chat_sharp,
                          colorIcon: Colors.white,
                          fun: FirstScreen.routeName),
                      ThreeIcons(context,
                          color: Colors.yellow[800]!,
                          icon: Icons.call,
                          colorIcon: Colors.white!,
                          fun: FirstScreen.routeName),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextStyle(text: "About", fontSize: 25.0),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextStyle(text:
                    "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "
                        "Amira Ahmed "

                        , fontSize: 19.0,
                        lines: 3
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextStyle(text: "Location", ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:Image.asset("assets/images/gps.jpg",fit: BoxFit.cover),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    MyTextStyle(text: "Payment methods", ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          payment("assets/images/visa.png"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      width: 200,
                      child: MyTextStyle(text: "Appointment",lines: 1),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    MyTextStyle(text: "Date :", ),

                    SizedBox(
                      height: 15,
                    ),

                    MyTextStyle(text: "Time : ", ),
                    SizedBox(
                      height: 15,
                    ),

            ],
          ),
        ),
        ]
      ),
          ]
        )
      )));
  }

  }


