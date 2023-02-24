import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';

class LabelForm extends StatelessWidget {
    String label;
    LabelForm(this.label);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Text(label,
      style:const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: MyTheme.primaryColor
      ),

      ),
    );
  }
}
