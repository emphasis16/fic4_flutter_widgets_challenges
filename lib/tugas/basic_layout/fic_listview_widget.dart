import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FICListViewWidget extends StatelessWidget {
  FICListViewWidget({super.key});

  final List<String> categories = [
    'All',
    'Living Room',
    'Bed Room',
    'Dining Room',
    'Kitchen'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('FIC - ListViw'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(top: 10),
                itemCount: categories.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {},
                  child: AnimatedContainer(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 24,
                    ),
                    duration: const Duration(microseconds: 500),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: Text(
                      categories[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: ListView(
                padding: const EdgeInsets.only(top: 10),
                children: [
                  ...List.generate(
                    categories.length,
                    (category) => GestureDetector(
                      onTap: () {},
                      child: AnimatedContainer(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 5,
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 24),
                        duration: const Duration(milliseconds: 500),
                        child: Text(
                          categories[category],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: ListView(
                padding: const EdgeInsets.only(top: 10),
                children: [
                  ...List.generate(
                    categories.length,
                    (category) => GestureDetector(
                      onTap: () {},
                      child: AnimatedContainer(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 5,
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 24),
                        duration: const Duration(milliseconds: 500),
                        child: Text(
                          categories[category],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
