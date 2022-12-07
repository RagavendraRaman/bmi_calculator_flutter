import 'package:flutter/material.dart';
import 'constant.dart';


class BottomContainer extends StatelessWidget {

  BottomContainer({@required this.onTap, @required this.title});
  
  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: onTap,
     // onTap: () {
     //   Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
     // },
      child: Container(
       color: kBottomContainerColor,
       margin: EdgeInsets.only(top: 10.0),
       width: double.infinity,
       height: kBottomContainerheight,
       child: Center(
         child: Text(title,
         style: kCalculateButton,
           ),
         ),
       ),
    );
  }
}