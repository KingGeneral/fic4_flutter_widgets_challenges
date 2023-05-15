import 'package:fic4_flutter_widgets_challenges/tugas/navigation/drawer_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/navigation_push.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/sliver_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/tabbar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget AK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: SliverWidget(),
      // home: TabbarWidget(),
      // home: NavigationPush(),
      home: DrawerWidget(),
    );
  }
}
