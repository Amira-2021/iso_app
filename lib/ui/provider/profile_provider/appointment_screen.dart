import 'package:flutter/material.dart';
import 'package:iso_app/ui/provider/profile_provider/components.dart';

class AppointmentScreen extends StatelessWidget {
  static const String routeName="appointment";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.green[100]
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green[200]
                    ),
                    child: Icon(Icons.check,color: Colors.green[800],size: 80,),
                  ),
                ),
              ]
            ),
            SizedBox(height: 15,),
            MyTextStyle(text: "Thank You!",color: Colors.green),
            SizedBox(height: 15,),
            MyTextStyle(text: "Your Appointment Created"),

          ],

        ),),
    );
  }
}
