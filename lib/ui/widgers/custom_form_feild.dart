import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';

typedef Validator = String? Function (String?);
class CustomTextFeild extends StatelessWidget {
  String hint;
  TextInputType? type;
  IconData? iconSuffix;
  IconData iconPreffix ;
  Validator? validator;
  TextEditingController? controller;
  bool hideText;

  CustomTextFeild(
      this.hint,
      this.iconPreffix,
      {this.iconSuffix,this.validator,this.type = TextInputType.text,
      this.hideText =false ,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:15),
      child: TextFormField(
        keyboardType: type,
        validator:validator,
        obscureText: hideText,
        controller: controller,
        style: TextStyle(
          fontSize: 18
          ),
        decoration: InputDecoration(
          suffixIcon: Icon(iconSuffix,color: MyTheme.primaryColor,),
          prefixIcon: Icon(iconPreffix,color: MyTheme.primaryColor,),
          hintText: hint,
          fillColor: Colors.white,
          filled: true,
          focusColor: Colors.red,
          hintStyle:const TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:const BorderSide(
              color: Colors.black,
              width: 1
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:const BorderSide(
                color: Colors.black,
                width: 1
            ),
          ),
        ),
        cursorColor: MyTheme.primaryColor,

      ),
    );
  }
}
