import 'package:flutter/foundation.dart';
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
          child: CustomCard(
              heading: "Test Heading",
              body: "test body",
              button: "click me",
              onPressed: () {
                if (kDebugMode) {
                  print("Button is clicked");
                }
              }),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String heading;
  final String body;
  final String button;
  final VoidCallback onPressed;

  const CustomCard(
      {required this.heading,
      required this.body,
      required this.button,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo,
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        margin: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min, // kind of height= wrap
            children: [
              const SizedBox(height: 10),
              Text(
                heading,
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                body,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: onPressed, child: const Text("click me", style: TextStyle(color: Colors.brown),))
            ],
          ),
        ));
  }
}
