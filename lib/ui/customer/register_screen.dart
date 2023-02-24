
import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';
import 'package:iso_app/ui/widgers/custom_form_feild.dart';
import 'package:iso_app/ui/widgers/headers.dart';
import 'package:iso_app/ui/widgers/label_form.dart';
import 'package:iso_app/ui/widgers/submit_button.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName='register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool hide= true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Stack(
       children: [
         Container(
           color: Colors.white,
         ),
         Positioned(
           top: 50,
           bottom: 50,
           left: 5,
           right: 5,
           child: SingleChildScrollView(
             child: Container(
               decoration: BoxDecoration(
                 color: MyTheme.primaryColorLight,
                 borderRadius: BorderRadius.circular(20)
               ),
               padding: EdgeInsets.all(15),
               margin:const EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   Header("Register"),
                   LabelForm("Full Name"),
                   CustomTextFeild("Enter Full Name",Icons.person,),
                   LabelForm("Email"),
                   CustomTextFeild("Enter your email",Icons.email,type: TextInputType.emailAddress),
                   LabelForm("Phone Number"),
                   CustomTextFeild("Enter your phone",Icons.phone,type: TextInputType.phone,),
                   LabelForm("Enter Password"),
                   CustomTextFeild("Enter your password",Icons.password_outlined,iconSuffix:hide ?Icons.remove_red_eye:Icons.add,type: TextInputType.visiblePassword,hideText: hide),
                   LabelForm("Forget Password"),
                   CustomTextFeild("Enter for password",Icons.person),
                   SubmitButton("Sign Up", () { })
                 ],
               ),
             ),
           ),
         ),
       ],

     ),
    );
  }
}
