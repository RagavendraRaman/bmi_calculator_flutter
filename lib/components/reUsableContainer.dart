import 'package:flutter/material.dart';



class ReUsableContainer extends StatelessWidget {
  // const ReUsableContainer({ Key key,}) : super(key: key);//default constructor

  /*About Keys in flutter */

  /*The key class is something that you use when y0u need to keep track of the state of widgets.
  And this is especially useful when your widget are moving around in the widget tree,
  while they're changing their position in the widget tree.
  This usually happens when your widgets are physically moving on the screen such as in an animation or
  when you see things scrolling on screen, But in most other cases, we don't actually need it.*/

  ReUsableContainer({@required this.colour, this.cardChild,this.onPress});

  /*The reason why we using required here is to notify the colour constructor to the ReUsableContainer which we have given in the previous rows and column*/
  /*ReUsableContainer() without required */
  /*ReUsableContainer(colour:Color(0xff1D1E33)) with @required*/

  /*Final keyword */
  /*If we doesn't use final keyword in the colour variable ,the class ReUsableContainer turned as immutable */
  /*Mutable means Changeable & Immutable meand Unchangeable*/
  /*Why it shows like immutable is the colour is changing in every ReUsableContainer */

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
