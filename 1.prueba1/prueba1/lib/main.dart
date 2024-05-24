import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo Prueba1',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Welcome to Midu"),
            ),
            body: Center(
              child: Text(wordPair.asPascalCase),
            )));
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context)
}
