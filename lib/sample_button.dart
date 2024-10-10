import 'package:flutter/material.dart';

void main() {
  runApp(SampleButton());
}

class SampleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample Button",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sample Button example"),
        ),
        body: Center(
          child: CustomButton(
              text: "Click me",
              onPressed: () {
                print("Button is clicked");
              }),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red, padding: const EdgeInsets.all(50)),
        child: Text(
          text,
          style: const TextStyle(fontSize: 24),
        ));
  }
}
