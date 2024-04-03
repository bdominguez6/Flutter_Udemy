import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

/*class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    var startAlignment = Alignment.topRight;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: StyledText("Holaaa!!!"),
      ),
    );
  }
}*/

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  GradientContainer.purple({super.key})
      : colors = [Colors.deepPurple, Colors.indigo];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
