import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebaborrar/config/theme/app_theme.dart';
import 'package:pruebaborrar/presentation/screens/chat_screen.dart';
import 'package:pruebaborrar/providers/chat_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme(selectedColor: 4).theme(),
          home: const ChatScreen()),
    );
  }
}
