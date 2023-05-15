import 'package:flutter/material.dart';

class NavigationPop extends StatelessWidget {
  const NavigationPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AppBarScreen Nav pop',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('back / pop'),
            )
          ],
        ),
      ),
    );
  }
}
