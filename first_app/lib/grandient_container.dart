import 'package:first_app/styled_text.dart';
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
  GradientContainer(this.colors, {super.key});
  GradientContainer.purple({super.key})
      : colors = [Colors.deepPurple, Colors.indigo];

  final List<Color> colors;
  var activeDiceImage = 'assets/images/dice-1.png';

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              child: const Text(
                'Roll Dice',
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Changing dice...');
  }
}
