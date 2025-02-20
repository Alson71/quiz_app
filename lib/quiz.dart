import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'questions_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
  
}

class _QuizState extends State<Quiz>{
  Widget? activeScreen;
  void initState(){
    activeScreen = StartScreen(Alignment.topLeft,Alignment.bottomRight, switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState((){
      activeScreen = QuestionsScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          home: Scaffold(
            body: activeScreen,
          ),
      );
  }

}