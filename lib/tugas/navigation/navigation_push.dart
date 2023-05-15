import 'package:fic4_flutter_widgets_challenges/tugas/navigation/navigation_pop.dart';
import 'package:flutter/material.dart';

class NavigationPush extends StatelessWidget {
  const NavigationPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("nav push"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return NavigationPop();
                    },
                  ),
                );
              },
              child: Text('go next'),
            ),
          ],
        ),
      ),
    );
  }
}
