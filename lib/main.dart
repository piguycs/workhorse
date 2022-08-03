import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workhorse/settings.dart';
import 'package:workhorse/themes/appTheme.dart' as theme;

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0X161E36FF),
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int currpage = 0;
  static List<String> titleList = ['Today', 'Week', 'Month', 'Paychecks'];
  String title = titleList[currpage];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.lightTheme,
      darkTheme: theme.darkTheme,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 46,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const SettingsPage();
                    },
                  ));
                },
                icon: const Icon(Icons.settings, color: Colors.white),
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: ((int index) {
              setState(() {
                title = titleList[index];
                currpage = index;
              });
            }),
            selectedIndex: currpage,
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
          body: <Widget>[
            const Text('Today\'s work'),
            const Text('Week\'s work'),
            const Text('Month\'s work'),
            const Text('Paychecks Recieved'),
          ][currpage],
          floatingActionButton: FloatingActionButton.extended(
            onPressed: (() {}),
            label: const Text('Start'),
            icon: const Icon(Icons.timer_outlined),
            backgroundColor: const Color(0xff7564fb),
          ),
        );
      }),
    );
  }
}
