import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0X161E36FF),
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0X161E36FF),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color(0X161E36FF),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.transparent,
          indicatorColor: const Color(0xff7564fb),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Color.fromARGB(255, 202, 213, 234),
            ),
          ),
          iconTheme: MaterialStateProperty.all(
            const IconThemeData(
              color: Color.fromARGB(255, 202, 213, 234),
            ),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Flex(
            direction: Axis.horizontal,
            children: const [
              Text(
                'Today',
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: NavigationBar(
          height: 75,
          elevation: 0,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.calendar_view_day),
              label: 'Today',
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_view_week),
              label: 'Week',
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_view_month),
              label: 'Month',
            ),
            NavigationDestination(
              icon: Icon(Icons.euro),
              label: 'Paychecks',
            ),
          ],
        ),
        body: Flex(
          direction: Axis.vertical,
          children: const [
            Icon(Icons.abc),
            Icon(Icons.abc),
          ],
        ),
      ),
    );
  }
}
