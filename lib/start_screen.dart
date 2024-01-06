import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Color.fromARGB(148, 243, 241, 241),
            ),
            // Opacity(
            //   opacity: 0.6,
            //   child: Image.asset(
            //     'assets/images/quiz-logo.png',
            //     width: 300,
            //   ),
            // ),
            const SizedBox(height: 80),
            Text(
              'नये साल की बहुत-बहुत शुभकामनाएँ ' ,
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 242, 240, 243),
                fontSize: 24,
              ),
            ),
            Text(
              '💐',
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 62, 8, 95),
                fontSize: 24,
              ),
            ),
            
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}