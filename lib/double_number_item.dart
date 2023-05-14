import 'package:flutter/material.dart';

class DoubleNumberItem extends StatefulWidget {
  const DoubleNumberItem({super.key});

  @override
  State<StatefulWidget> createState() => _DoubleNumberItemState();
}

class _DoubleNumberItemState extends State<DoubleNumberItem> {
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
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.black87,
      backgroundColor: Colors.grey[300],
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    return Expanded(
        child: Column(children: [
      TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(labelText: "数字を入力"),
      ),
      ElevatedButton(
          style: raisedButtonStyle,
          onPressed: _calculateDouble,
          child: const Text('do double!!')),
      Text('x2 equal $_result', textAlign: TextAlign.center),
    ]));
  }
}
