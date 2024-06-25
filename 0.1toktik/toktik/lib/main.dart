import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/providers/discover_provider.dart';
import 'package:toktik/screens/discover/discover_screen.dart';
import 'package:toktik/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage(),
        )
      ],
      child: MaterialApp(
        title: 'Toktik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Tok tik'),
            ),
            body: const DiscoverScreen()),
      ),
    );
  }
}
