import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 14, 186, 216),
          Color.fromARGB(255, 33, 27, 192)
        ], begin: Alignment.bottomLeft, end: Alignment.topRight),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Question',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer3'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer4'),
            ),
          ],
        ),
      ),
    );
  }
}
