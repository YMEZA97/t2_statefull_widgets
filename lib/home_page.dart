
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
        child: TextFieldSample(),
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


class TextFieldSample extends StatelessWidget {
  const TextFieldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );
  }
}