
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        centerTitle: true,
        title: const Text('Operaciones Aritmeticas'),
      ),



       body: const Center(
          

       


        ),


   floatingActionButton: FloatingActionButton(
    ///  onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        onPressed: () {  },
        child: const Icon(Icons.play_arrow),
        
      ),


    );
  }
}


class ObscuredTextFieldSample extends StatelessWidget {
  const ObscuredTextFieldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );
  }
}

class TextFieldExampleApp extends StatelessWidget {
  const TextFieldExampleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Obscured Textfield')),
        body: const Center(
          child: ObscuredTextFieldSample(),
        ),
      ),
    );
  }
}

void main() => runApp(const TextFieldExampleApp());