import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FICWrapWidget extends StatelessWidget {
  FICWrapWidget({super.key});

  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.purple,
    Colors.deepPurple,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Wrap'),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                ...List.generate(
                  colors.length,
                  (color) => Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.grey),
                      color: colors[color],
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
