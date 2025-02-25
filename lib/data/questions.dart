import 'package:quiz_app/models/quiz_question.dart';



var questions = [
  QuizQuestion(question[0],choices[0]),
  QuizQuestion(question[1],choices[1]),
  QuizQuestion(question[2],choices[2]),
  QuizQuestion(question[3],choices[3]),
  QuizQuestion(question[4],choices[4]),
 
];

List<String> question  = 
[
'Who was the first emperor of Rome?',
"The Great Pyramid of Giza was built during which civilization?",
"What famous city was buried under volcanic ash in 79 AD?",
"What was the writing system of the ancient Sumerians called?",
"Which famous conqueror created one of the largest empires in history before dying at 32?"
];

List<List<String>> choices = [
  ["Julius Caesar", "Augustus", "Nero", "Tiberius"],
  ["Greek", "Roman", "Egyptian", "Mesopotamian"],
  ["Pompeii", "Carthage", "Athens", "Troy"],
  ["Hieroglyphics", "Cuneiform", "Sanskrit", "Latin"],
  ["Alexander the Great", "Genghis Khan", "Julius Caesar", "Napoleon Bonaparte"]
];

List<String> correctAnswers = [
  "Augustus",  
  "Egyptian",  
  "Pompeii",  
  "Cuneiform",  
  "Alexander the Great"
];
