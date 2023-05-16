import 'package:flutter/material.dart';

class FICContainerWidget extends StatelessWidget {
  const FICContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('FIC - Container'),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.2),
              offset: Offset.zero,
              blurRadius: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
