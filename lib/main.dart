import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),//makes the background black/dark
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xff0E0F20),
        ),
        scaffoldBackgroundColor: Color(0xff0E0F20),//Makes scaffold fully given color
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(
        //     color: Colors.red,
        //   ),),
         // primarySwatch: Colors.red,//Makes the red color in appbar and floatin button
          // accentColor: Colors.amber,//amber color in floating button
          // appBarTheme: AppBarTheme(//Gives amberAccent inapp bar
          //   backgroundColor: Colors.amberAccent,
          // )
      ), 
      // routes: {
      //   '/results_page' :(context) => ResultPage(),
      // },   
      home: InputPage(),
    );
  }
}

