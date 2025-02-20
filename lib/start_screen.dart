import "package:flutter/material.dart";
import 'image_and_text.dart';
class StartScreen extends StatelessWidget {
  const StartScreen(this.startAlignment, this.endAlignment, this.startQuiz, {super.key});

  final Alignment startAlignment;
  final Alignment endAlignment;
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: const [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 9, 1, 24),
          ],
        ),
      ),
      child: Center(
        child: ImageAndText()
        ),
    );
  }
}
