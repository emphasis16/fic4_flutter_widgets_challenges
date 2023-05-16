import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FICCircleAvatarWidget extends StatelessWidget {
  FICCircleAvatarWidget({super.key});

  final List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('FIC - CircleAvatar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage('https://i.ibb.co/PGv8ZzG/me.jpg'),
            ),
            Row(
              children: [
                ...List.generate(
                  colors.length, // banyaknya perulangan
                  (i) => CircleAvatar(
                    // returnnya
                    radius: 40,
                    backgroundColor: colors[i],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
