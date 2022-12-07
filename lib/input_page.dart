import 'package:bmi_calculator/resluts_page.dart';
import 'package:bmi_calculator/screens/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/bottom_container.dart';
import 'components/constant.dart';
import 'components/genderContainer.dart';
import 'components/reUsableContainer.dart';
import 'components/rounded_iconbutton.dart';

enum Gendar{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

 /*the drawback of this if/else method is we can make the both male and female inactive
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void updateColor(Gendar selectedGendar){
    if(selectedGendar == Gendar.male){
      if(maleCardColor == inactiveCardColor){
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }else{
        maleCardColor = inactiveCardColor;
      }
    }
    else{
      if(femaleCardColor == inactiveCardColor){
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }else{
        femaleCardColor = inactiveCardColor;
      }
    }
  }
  */

  Gendar selectedGendar;
  int height1 = 200;
  int weight1 = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      //from the below type we can give the color for floating action bar by using theme
      // floatingActionButton: Theme(
      //   data: ThemeData(accentColor : Colors.red),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,//this for make the HEIGHT text center
        children: <Widget>[
         Expanded(
          child: Row(
          children: <Widget>[
            Expanded(
              child:  ReUsableContainer(
                onPress: (){//this is the anonyomous method it is written in reUsablContainer page
                  setState(() {
                    selectedGendar = Gendar.male;
                  });
                },
                colour: selectedGendar == Gendar.male ? kActiveCardColor : kInactiveCardColor,
                cardChild: GenderContainer(
                  genderIcon: FontAwesomeIcons.mars,
                  genderText: 'MALE',),
                ),
              ),
            Expanded(
              child:  ReUsableContainer(
                onPress: (){
                  setState(() {
                    selectedGendar = Gendar.female;
                  });
                },
                colour:selectedGendar == Gendar.female ? kActiveCardColor : kInactiveCardColor,
                cardChild: GenderContainer(
                  genderIcon: FontAwesomeIcons.venus,
                  genderText: 'FEMALE',
                ),),
              ),
          ],
         ),),
         Expanded(
          child:  ReUsableContainer(
            colour:kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text('HEIGHT',
                style: kGenderTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,//When we use the CrossAxisAlignment.baseline we must use textbaseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(height1.toString(),
                    style: kHeightStyle,
                    ),
                    Text('cm',
                    style: kGenderTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    activeTrackColor: Colors.white,//this active color is default ot slider
                    thumbShape: 
                      RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape: 
                      RoundSliderOverlayShape(overlayRadius: 25.0),
                  ),
                  child: Slider(
                    value: height1.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue){
                      setState(() {
                        height1 = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
           ),
          ),
         Expanded(
          child: Row(
          children: <Widget>[
            Expanded(
              child:  ReUsableContainer(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('WEIGHT',
                    style: kGenderTextStyle,
                    ),
                    Text(weight1.toString(),
                    style: kHeightStyle,
                    ),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundedIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              weight1++;
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        RoundedIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              weight1--;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                colour:kActiveCardColor
                ),
              ),
            Expanded(
              child:  ReUsableContainer(
                colour:kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AGE',
                      style: kGenderTextStyle,
                    ),
                    Text(
                       age.toString(),
                       style: kHeightStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundedIconButton(
                          icon: FontAwesomeIcons.plus, 
                          onPressed: (){
                            setState(() {
                              age++;
                            });
                          }),
                        SizedBox(width: 10),
                        RoundedIconButton(
                          icon: FontAwesomeIcons.minus, 
                          onPressed: (){
                            setState(() {
                              age--;
                            });
                          })
                      ],
                    ),
                  ],
                ),
                ),
              ),
          ],
         ),),
         BottomContainer(
          title: 'CALCULATE',
          onTap:  (){

            Calculator calc = Calculator(height: height1, weight:  weight1);

             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(
                  bmiResult: calc.calculateBMI(),
                  indicationColor: calc.getColor(),
                  bmiResultText: calc.getBmiResultText(), 
                  bmiResultDescription: calc.getBmiResultDescription(),
                  ),
                ));
            },
          ),
        ],
      ),
    );
  }
}





