import 'package:flutter/material.dart';

class SliverWidget extends StatefulWidget {
  const SliverWidget({super.key});

  @override
  State<SliverWidget> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  bool pinned = true;
  bool snap = false;
  bool floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Sliver'),
        actions: const [],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
              title: Text(
                'SLiver App Bar',
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 100,
                  color: index.isOdd ? Color(0xffFFFFFF) : Colors.blue[200],
                  child: Center(
                    child: Text(
                      index.toString(),
                      textScaleFactor: 5,
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
