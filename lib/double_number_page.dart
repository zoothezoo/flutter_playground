import 'package:flutter/material.dart';
import 'package:flutter_playground/double_number_item.dart';

class DoubleCounterPage extends StatefulWidget {
  const DoubleCounterPage({super.key});

  @override
  State<DoubleCounterPage> createState() => _DoubleCounterPageState();
}

class _DoubleCounterPageState extends State<DoubleCounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        itemExtent: 100.1,
        children: const <DoubleNumberItem>[
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
          DoubleNumberItem(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class DoubleNumber extends StatefulWidget {
  @override
  _DoubleNumberState createState() => _DoubleNumberState();
}

class _DoubleNumberState extends State<DoubleNumber> {
  final TextEditingController _controller = TextEditingController();
  int _result = 0;

  void _calculateDouble() {
    int number = int.parse(_controller.text);
    setState(() {
      _result = number * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: "数字を入力"),
        ),
        ElevatedButton(
          onPressed: _calculateDouble,
          child: const Text('double'),
        ),
        Text(
          '結果: $_result',
          style: const TextStyle(fontSize: 24),
        )
      ],
    );
  }
}
