import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/aspectratio.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/center_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/column_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/expanded_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/gridview_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/listview_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/padding_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/button_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/circle_avatar_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/container_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/icon_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/image_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/scaffold_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_widget/text_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/navigation/bottom_navbar.dart';
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
      // home: DrawerWidget(),
      // home: BottomNavbarWidget(),

      // Basic Widget
      // home: ButtonWidget(),
      // home: CircleAvatarWidget(),
      // home: ContainerWidget(),
      // home: IconWidget(),
      // home: ImageWidget(),
      // home: ScaffoldWidget(),
      // home: TextWidget(),

      // basic layout
      // home: Aspectratio(),
      // home: CenterWidget(),
      // home: ColumnWidget(),
      // home: ExpandedWidget(),
      // home: GridViewWidget(),
      // home: ListViewWidget(),
      home: PaddingWidget(),
    );
  }
}
