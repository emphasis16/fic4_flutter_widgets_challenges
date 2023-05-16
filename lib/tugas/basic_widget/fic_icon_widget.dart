import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FICIconWidget extends StatelessWidget {
  const FICIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('FIC - Icon'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: const [
            Icon(
              Icons.share,
              size: 32,
              color: Colors.blue,
            ),
            Icon(
              Icons.favorite,
              size: 36,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
