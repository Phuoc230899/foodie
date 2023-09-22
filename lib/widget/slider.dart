import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: currentSliderValue,
        max: 100,
        divisions: 1000,
        label: currentSliderValue.round().toString(),
        activeColor: const Color.fromARGB(255, 86, 99, 255),
        onChanged: (double value) {
          setState(() {
            currentSliderValue = value;
          });
        },
    );
  }
}
