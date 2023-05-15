import 'package:flutter/material.dart';

class Aspectratio extends StatelessWidget {
  const Aspectratio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aspect ratio"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 20 / 5,
                  child: Container(
                    color: Colors.blue,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
