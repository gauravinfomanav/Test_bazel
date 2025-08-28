import 'package:flutter/material.dart';
import '../../utils/autosize_text.dart';
import '../screen2/screen2.dart';
import '../screen3/screen3.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoSizeText(text: 'Screen 1'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AutoSizeText(
              text: 'This is Screen 1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen1()),
                );
              },
              child: const AutoSizeText(text: 'Go to Screen 1'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen2()),
                );
              },
              child: const AutoSizeText(text: 'Go to Screen 2'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen3()),
                );
              },
              child: const AutoSizeText(text: 'Go to Screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}
