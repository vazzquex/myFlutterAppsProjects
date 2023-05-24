import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 80, 230, 100),
            title: const Text('App by Santiago Vázquez'),
          ),
        ),
        body: const GradientContainer(Color.fromARGB(255, 65, 240, 65),
            Color.fromARGB(255, 157, 222, 176)),
      ),
    ),
  );
}
