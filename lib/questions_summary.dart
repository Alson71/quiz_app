import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
      children: summaryData.map((data) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(right: 0), // Moves it slightly left
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: data['user_answer'] as String == data['correct_answer'] as String
                    ? Colors.blue
                    : Colors.pink,
              ),
              child: Center(
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15), // Creates space between the number and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
                children: [
                  Text(
                    data['question'] as String,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data['user_answer'] as String,
                    style: GoogleFonts.lato(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    data['correct_answer'] as String,
                    style: GoogleFonts.lato(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
