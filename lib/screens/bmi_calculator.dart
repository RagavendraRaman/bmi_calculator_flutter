import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculator{

  Calculator({this.height,this.weight});

  final int height ;
  final int weight;
  double _bmi;//make this private bmi is access in bmiResult

  Color red = Color.fromARGB(255, 237, 9, 9);
  Color green = Color.fromARGB(255, 5, 236, 32);

  String calculateBMI(){

    _bmi = weight / pow(height / 100, 2);//why we divide height by 100 because cm to meter
    return _bmi.toStringAsFixed(1);//the usage of asfixed is how many decimel values want to print

  }

  String getBmiResultText(){

    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getBmiResultDescription(){

    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi > 18.5){
      return 'You have a normal body weight. Good job!';
    }else{
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  Color getColor(){

      if( _bmi >= 18.5 && _bmi <= 24.9){
        return green;
      }else{
        return red;
      }
  }

}