import 'package:flutter/material.dart';

class DoubleCounterPage extends StatefulWidget {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "your click number * 2 = ${_counter * 2}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            DoubleNumber()
          ],
        ),
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
