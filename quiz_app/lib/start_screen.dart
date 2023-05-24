import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 14, 186, 216),
          Color.fromARGB(255, 33, 27, 192)
        ], begin: Alignment.bottomLeft, end: Alignment.topRight),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/quizimage.png',
                width: 330, color: const Color.fromARGB(150, 255, 255, 255)),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
            ),
            const Text(
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
                '!Questions About Flutter!'),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () {},
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
      ),
    );
  }
}
