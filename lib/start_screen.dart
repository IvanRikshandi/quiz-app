import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Learn Flutter the fun way',
              style: GoogleFonts.alexandria(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_right_sharp),
              label: const Text('Start Quiz'),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            )
          ],
        ),
      )),
    );
  }
}
