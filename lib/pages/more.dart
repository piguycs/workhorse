import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() {}),
        label: const Text('Edit'),
        icon: const Icon(Icons.edit),
        backgroundColor: const Color(0xff7564fb),
      ),
    );
  }
}
