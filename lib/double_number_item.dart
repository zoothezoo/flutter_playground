import 'package:flutter/material.dart';

class DoubleNumberItem extends StatefulWidget {
  const DoubleNumberItem({super.key});

  @override
  State<StatefulWidget> createState() => _DoubleNumberItemState();
}

class _DoubleNumberItemState extends State<DoubleNumberItem> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Text('i am one of row items', textAlign: TextAlign.center));
  }
}
