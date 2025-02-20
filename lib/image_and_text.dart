import 'package:flutter/material.dart';
import 'quiz.dart';
class ImageAndText extends StatelessWidget{
  const ImageAndText({super.key});

  @override
  Widget build(BuildContext context){
      return Center(
       child: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
                Image.asset(
                  "assets/images/quiz-logo.png",
                  width: 300,
                  ),
                SizedBox(
                  height: 80,
                ),
                Text(
                    "Learn Flutter the Fun Way",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 30,
                  ),
                  OutlinedButton.icon(
                    
                    icon: const Icon(Icons.arrow_circle_right_outlined, size: 40),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40
                      )
                    ),
                    label: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      textStyle: const TextStyle(
                        fontSize: 28,
                        ),
                      ),
                      child: Text("Start Quiz!"),
                    ),
                  ),
            ],
        ),
      );
  }
}