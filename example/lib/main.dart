import 'package:flutter/material.dart';
import 'package:native_collator/native_collator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final polishOriginal = ['świnia', 'szafa', 'sok', 'tata'];
  final polishSorted = await NativeCollator.sort(polishOriginal, 'pl');

  final germanOriginal = ['Äpfel', 'Apfel', 'Öl', 'Zucker', 'Über'];
  final germanSorted = await NativeCollator.sort(germanOriginal, 'de');

  runApp(
    MyApp(
      polishOriginal: polishOriginal,
      polishSorted: polishSorted,
      germanOriginal: germanOriginal,
      germanSorted: germanSorted,
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> polishOriginal;
  final List<String> polishSorted;
  final List<String> germanOriginal;
  final List<String> germanSorted;

  const MyApp({
    super.key,
    required this.polishOriginal,
    required this.polishSorted,
    required this.germanOriginal,
    required this.germanSorted,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Native Collator Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const Text('Original Polish List:'),
              Text(polishOriginal.join(', ')),
              const SizedBox(height: 12),
              const Text('Sorted Polish List:'),
              Text(polishSorted.join(', ')),
              const Divider(height: 32),
              const Text('Original German List:'),
              Text(germanOriginal.join(', ')),
              const SizedBox(height: 12),
              const Text('Sorted German List:'),
              Text(germanSorted.join(', ')),
            ],
          ),
        ),
      ),
    );
  }
}
