import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workhorse/pages/pages.dart';
import 'package:workhorse/settings/settings.dart';
import 'package:workhorse/themes/app_theme.dart' as theme;

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromARGB(21, 30, 54, 255),
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
  static List<String> titleList = ['Work', 'Holidays', 'Paychecks', 'More'];
  String title = titleList[currpage];

  var pages = [const Work(), const Holidays(), const Paychecks(), const More()];

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
              // if it is a second click
              if (index == currpage) {
                if (index == 3) {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const SettingsPage();
                    },
                  ));
                }
              }
              // if it is a normal click
              else {
                setState(() {
                  title = titleList[index];
                  currpage = index;
                });
              }
            }),
            selectedIndex: currpage,
            height: 75,
            elevation: 0,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.timer_outlined),
                selectedIcon: Icon(Icons.timer),
                label: 'Work',
              ),
              NavigationDestination(
                icon: Icon(Icons.holiday_village_outlined),
                selectedIcon: Icon(Icons.holiday_village),
                label: 'Holidays',
              ),
              NavigationDestination(
                icon: Icon(Icons.payments_outlined),
                selectedIcon: Icon(Icons.payments),
                label: 'Paychecks',
              ),
              NavigationDestination(
                icon: Icon(Icons.more_horiz),
                label: 'More',
              ),
            ],
          ),
          body: pages[currpage],
        );
      }),
    );
  }
}
