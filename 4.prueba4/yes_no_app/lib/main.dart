import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ], //le colocamos el _ porque ahi va el context pero cmo no lo vamos a utilitzar lo ponemos asi _
      child: MaterialApp(
          title: 'Yes No App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme(selectedColor: 1).theme(),
          home: const ChatScreen()
          // Scaffold(
          //   appBar: AppBar(
          //     title: const Text('Yes No App'),
          //   ),
          //   body: Center(
          //     child: FilledButton(onPressed: () {}, child: const Text("Click me")),
          //   ),
          // ),
          ),
    );
  }
}
