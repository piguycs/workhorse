import 'package:flutter/material.dart';
import 'package:workhorse/utils/time.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  static Time time = Time(0, 0, 8);
  List<int> workTime = time.getTime(); // in seconds

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                '${workTime[2]}:${workTime[1]}:${workTime[0]}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 90,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 2,
            child: Text(
              'B',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() {
          setState(() {});
        }),
        label: const Text('Start'),
        icon: const Icon(Icons.timer_outlined),
        backgroundColor: const Color(0xff7564fb),
      ),
    );
  }
}
