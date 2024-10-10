import 'package:flutter/material.dart';

void main() {
  runApp(const StatelessWidget01());
}

class StatelessWidget01 extends StatelessWidget {
  const StatelessWidget01({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("this is label",
        style: TextStyle(color: Colors.blue, fontSize: 30), textDirection: TextDirection.ltr,);
  }
}
