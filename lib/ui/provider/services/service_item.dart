import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';
import 'package:iso_app/ui/customer/profile_customer/profile_screen.dart';
import 'package:iso_app/ui/provider/order/theme.dart';

class ServiceItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(horizontal: 5),
      width: 100,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, ProfileScreenCustomer.routeName);
              },
              child: Row(
                children: [
                CircleAvatar(
                  radius: 45,
                  foregroundImage: AssetImage("assets/images/logo.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Amira Ahmed",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height:10 ,),
                      Text("Luxor,Cairo",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                )
              ],),
            ),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child:Center(child: const Text("Cancel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25)
                    ),
                    child:Center(child: const Text("Accept",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                ),
            ],),
          ],
        ),
      ),
    );
  }
}
