import 'package:flutter/material.dart';

class FICTextWidget extends StatelessWidget {
  const FICTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('FIC - Text'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              'Discover the most modern furniture',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                letterSpacing: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
