import 'package:flutter/material.dart';

void main() {
  runApp(SampleInputField());
}

class SampleInputField extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _editingController = TextEditingController();

  SampleInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sample input field"),
        ),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:
                  TextFormField(
                      controller: _editingController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          suffixIcon: Icon(Icons.person),
                          prefixIcon: Icon(Icons.person),
                          labelText: "Enter your name"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter text";
                        }
                      }),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  if(_formKey.currentState?.validate() == true){
                    print("validated");
                  }
                }, child: const Text("submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
