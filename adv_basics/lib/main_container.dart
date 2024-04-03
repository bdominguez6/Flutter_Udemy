import 'package:adv_basics/principal_screen.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.deepPurple),
      child: Center(
        child: PrincipalScreen(),
      ),
    );
  }
}
