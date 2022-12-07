import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {

  final IconData icon;
  final Function onPressed;

  RoundedIconButton({@required this.icon,@required this.onPressed});
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 10.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
       onPressed: onPressed,
       child: Icon(
         icon,
         color: Colors.white,
         ),
    );
  }
}