import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iso_app/theme/theme.dart';

class SubmitButton extends StatelessWidget {
   String text;
   VoidCallback onPressed;
   SubmitButton(this.text,this.onPressed);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style,
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18
          ),
        ));
  }
}
