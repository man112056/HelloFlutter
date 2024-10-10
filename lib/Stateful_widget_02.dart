import 'package:flutter/material.dart';


void main(){
  runApp(StateFullWidget02());
}

class StateFullWidget02 extends StatefulWidget {
  const StateFullWidget02({super.key});

  @override
  State<StateFullWidget02> createState() => _SampleStateFulWidgetState();

}

class _SampleStateFulWidgetState extends State<StateFullWidget02> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Button pressed these many times"),
              Text('$_counter', style: Theme.of(context).textTheme.headlineMedium,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    child: const Text('+',
                      style: TextStyle(fontSize: 24, color: Colors.yellow),),
                  ),

                  ElevatedButton(onPressed: _decrementCounter,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    child: const Text('-',
                      style: TextStyle(fontSize: 24, color: Colors.yellow),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}