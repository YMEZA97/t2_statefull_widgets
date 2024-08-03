import 'package:flutter/material.dart';

var total = "23fgfh";

// List of items in our dropdown menu
const List<String> items = <String>[
  'Suma',
  'Resta',
  'Multiplicacion',
  'Division'
];

String dropdownValue = items.first;

TextEditingController n1 = TextEditingController();
TextEditingController n2 = TextEditingController();
GlobalKey<FormState> keyForm = GlobalKey();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

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
          margin: const EdgeInsets.all(30.0),
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
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListTile(title: item));
}

Widget formUI() {
  return Column(children: <Widget>[
    formItemsDesign(TextField(
      controller: n1,
      textAlign: TextAlign.center,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: 'Primer Valor'),
    )),
    formItemsDesign(TextField(
      controller: n2,
      textAlign: TextAlign.center,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: 'Segundo Valor'),
    )),
    formItemsDesign(
      DropdownButton(
        // Initial Value
        value: dropdownValue,

        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },

        // Array list of items
        items: items.map<DropdownMenuItem<String>>((String items) {
          return DropdownMenuItem<String>(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
      ),
    ),
    formItemsDesign(Text(
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 30),
        "Total de es: ${total}")),
  ]);
}

setState(Null Function() param0) {}
