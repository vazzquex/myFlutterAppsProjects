import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quizimage.png',
              width: 330, color: const Color.fromARGB(150, 255, 255, 255)),
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
          ),
          Text(
              style: GoogleFonts.lato(
                fontSize: 25.0,
                color: Colors.white,
              ),
              '!Questions About Flutter!'),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(180, 60),
                  backgroundColor: const Color.fromARGB(147, 7, 172, 255)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Start Quiz',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
