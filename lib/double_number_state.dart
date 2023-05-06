import 'package:flutter/material.dart';

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
