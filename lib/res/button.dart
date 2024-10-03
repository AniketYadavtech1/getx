import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;
  const Button({
    Key? key,
    required this.btnName,
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.callback,
  });
// This is a custom  button you can use any where in your project 
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
       child: icon != null
          ?   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 11,
                ),
                icon!,
                Text(
                  btnName,
                  style: textStyle,
                )
              ],
            )
          : Text(btnName, style: textStyle),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
