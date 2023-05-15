import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  CircleAvatarWidget({super.key});

  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("'Circle Avatar'"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://i.ibb.co/PGv8ZzG/me.jpg',
                ),
              ),
              Row(
                children: [
                  for (var color in colors)
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: color,
                    ),
                ],
              ),
              Row(
                children: [
                  ...List.generate(
                    colors.length,
                    (index) => CircleAvatar(
                      radius: 40,
                      backgroundColor: colors[index],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
