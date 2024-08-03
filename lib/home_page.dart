import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController n1 = TextEditingController();
TextEditingController n2 = TextEditingController();
TextEditingController sumatoria = TextEditingController();
TextEditingController total = TextEditingController();

GlobalKey<FormState> keyForm = GlobalKey();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Operaciones Aritmeticas'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Form(
            key: keyForm,
            child: formUI(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        ///  onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

formItemsDesign(item) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 7),
    child: Card(child: ListTile(title: item)),
  );
}

Widget formUI() {
  return Column(children: <Widget>[
    formItemsDesign(TextField(
      controller: n1,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: 'Primer Valor'),
    )),
    formItemsDesign(TextField(
      controller: n2,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: 'Segundo Valor'),
    )),
    formItemsDesign(TextField(
      controller: total,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: 'Total'),
    )),
  ]);
}
