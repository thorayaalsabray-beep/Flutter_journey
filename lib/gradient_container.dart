import 'package:flutter/material.dart';
import 'package:frist_app/styeld_text.dart';
import 'package:frist_app/dice_roller.dart';

var startAligment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  GradientContainer.purple({super.key})
      : color1 = Color.fromARGB(255, 1, 30, 79),
        color2 = Color.fromARGB(255, 79, 105, 125),
        color3 = Color.fromARGB(255, 13, 23, 166);

  final Color color1;
  final Color color2;
  final Color color3;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}












// class GradientContainer extends StatelessWidget {
// const GradientContainer(this.colors,{super.key});
// final List<Color> colors;

//   @override
//  Widget build(context)   {
//   return Container(
//           decoration:  BoxDecoration(
//             gradient: LinearGradient(
//               colors:colors,
//               begin: startAligment,
//               end: endAligment,
//             ),
//           ),
//           child:  Center(
//             child:styledText('hi') ,
//           ),
//         );
//  }
// }

