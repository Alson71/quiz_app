import 'package:flutter/material.dart';
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
                const SizedBox(
                  height: 30,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        textStyle: const TextStyle(
                          fontSize: 28,
                          ),
                        ),
                      child: Text("Start Quiz!",),
                    ),
                  ),
            ],
        ),
      );
  }
}