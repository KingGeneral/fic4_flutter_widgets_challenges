import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Icon(
              Icons.share,
              size: 32,
            ),
            Icon(
              Icons.favorite,
            )
          ],
        ),
      ),
    );
  }
}
