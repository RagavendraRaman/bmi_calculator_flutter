import 'package:bmi_calculator/components/bottom_container.dart';
import 'components/reUsableContainer.dart';
import 'components/bottom_container.dart';
import 'components/constant.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult, @required this.bmiResultText, @required this.bmiResultDescription,@required this.indicationColor});

  final String bmiResult;
  final String bmiResultText;
  final String bmiResultDescription;
  final Color indicationColor;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded( 
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              alignment: Alignment.bottomLeft,
              child: Text('Your result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 50.0,
              ),),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReUsableContainer(
              colour: kActiveCardColor,
              cardChild:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(bmiResultText.toUpperCase(),
                      style: TextStyle(
                        color: indicationColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                    ),
                    ),
                  ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(bmiResult,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                   ),
                  ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(bmiResultDescription,
                      textAlign: TextAlign.center,
                      style: kDescription,
                      ),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            //flex: 1, //defalutly the flex of the expanded is 1
            child: BottomContainer(
              title: 'RE-CALCULATE',
              onTap: (){
                Navigator.pop(context, '/input_page');
              },
            ),
          ),
        ],
      ),
    );
  }
}