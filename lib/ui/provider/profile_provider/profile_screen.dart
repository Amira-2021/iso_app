import 'package:flutter/material.dart';
import 'package:iso_app/ui/first/first_screen.dart';
import 'package:iso_app/ui/provider/profile_provider/appointment_screen.dart';
import 'package:iso_app/ui/provider/profile_provider/components.dart';
import 'package:iso_app/ui/provider/profile_provider/time_item.dart';

class ProfileOfProvider extends StatefulWidget {
  static const String routeName = "profileOfPovider";

  @override
  State<ProfileOfProvider> createState() => _ProfileOfProviderState();
}

class _ProfileOfProviderState extends State<ProfileOfProvider> {
  late DateTime selectedDate;
  int click=0;
  int followCount=0;
  List <String> listTime=[
    "09:00",
    "10:00",
    "11:00",
    "12:00",
    "01:00",
    "02:00",
    "02:00",
    "03:00",

  ];

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    selectedDate = DateTime.now().add(const Duration(days: 5));
  }
  bool clickFollow=true;

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
                    width: 200,
                    child: MyTextStyle(text: "Electrical ", fontSize: 22.0,align: TextAlign.center,lines: 1),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // RatingBar.builder(
                  //   initialRating: 3,
                  //   ignoreGestures: true,
                  //   minRating: 4,
                  //   direction: Axis.horizontal,
                  //   allowHalfRating: false,
                  //   itemCount: 5,
                  //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  //   itemBuilder: (context, _) => Icon(
                  //     Icons.star,
                  //     color: Colors.amber,
                  //
                  //   ),
                  //   itemSize: 25,
                  //   onRatingUpdate: (rating) {
                  //     print(rating);
                  //   },
                  // )
                ],
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
                 InkWell(
                   onTap: (){
                     clickFollow?
                     followCount=1:followCount=0;
                     clickFollow=false;
                     setState(() {

                     });
                     print(followCount);

                   },
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical: 10),
                     height: 50,
                     width: 130,
                     decoration: BoxDecoration(
                       color: followCount!=1?Colors.red[100]:Colors.red[500],
                       borderRadius: BorderRadius.circular(25)
                     ),
                     child:MyTextStyle(text: "Following",align: TextAlign.center,fontSize: 23)
                   ),
                 ),
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
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FollowTapsRow(title: "Followers",numOfFollow: "30+"),
                  SizedBox(width: 5,),
                  FollowTapsRow(title: "Experiences",numOfFollow: "3 Years"),
                  SizedBox(width: 5,),
                  FollowTapsRow(title: "Rating",numOfFollow: "300",),
                ],
              ),),
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
                          payment("assets/images/visa.png"),
                          payment("assets/images/visa.png"),
                          payment("assets/images/visa.png"),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                   MyTextStyle(text: "Select Date", ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      color: Colors.grey[100],
                      child: CalendarDatePicker(

                          initialDate: DateTime.now(),
                          firstDate: DateTime.now().subtract(Duration(days: 365)),
                          lastDate: DateTime.now().add(Duration(days: 365)),
                          onDateChanged: (date){
                            print(date);
                          }
                      ),

                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextStyle(text: "Select Time", ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 250,
                      child: GridView.builder(
                        padding:const EdgeInsets.all(10),
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          childAspectRatio: 17/6,
                          crossAxisSpacing: 5,
                        ),
                        itemBuilder:(context,index)=>TimeItem(item:listTime[index],index: index,function: clickFun),
                        itemCount: listTime.length,
                      ),
                    ),
                   bottom(context, title: "Book Appointment", route: AppointmentScreen.routeName)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

   clickFun(int clickItem)
  {
      setState(() {

      });


  }

}
