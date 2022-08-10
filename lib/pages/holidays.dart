import 'package:flutter/material.dart';

class Holidays extends StatefulWidget {
  const Holidays({Key? key}) : super(key: key);

  @override
  State<Holidays> createState() => _HolidaysState();
}

class _HolidaysState extends State<Holidays> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() {}),
        label: const Text('Add'),
        icon: const Icon(Icons.add),
        backgroundColor: const Color(0xff7564fb),
      ),
    );
  }
}
