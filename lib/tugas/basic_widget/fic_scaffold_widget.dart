import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FICScaffoldWidget extends StatefulWidget {
  const FICScaffoldWidget({super.key});

  @override
  State<FICScaffoldWidget> createState() => _FICScaffoldWidgetState();
}

class _FICScaffoldWidgetState extends State<FICScaffoldWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sample FIC Code'),
      ),
      body: Center(
        child: Text('You have pressed the button $count time'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
