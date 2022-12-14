import 'package:flutter/material.dart';
import 'constant.dart';

class GenderContainer extends StatelessWidget {
  
  GenderContainer({@required this.genderIcon,this.genderText});

  final IconData genderIcon;
  final String genderText;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(genderText,
        style: kGenderTextStyle),
      ],
    );
  }
}
 
