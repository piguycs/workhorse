import 'package:flutter/material.dart';

class Paychecks extends StatefulWidget {
  const Paychecks({Key? key}) : super(key: key);

  @override
  State<Paychecks> createState() => _PaychecksState();
}

class _PaychecksState extends State<Paychecks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() {}),
        label: const Text('Record Payment'),
        icon: const Icon(Icons.app_registration),
        backgroundColor: const Color(0xff7564fb),
      ),
    );
  }
}
