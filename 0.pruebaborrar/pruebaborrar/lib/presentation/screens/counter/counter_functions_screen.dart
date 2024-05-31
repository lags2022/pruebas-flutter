import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Screen"),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                },
                icon: const Icon(Icons.html_rounded))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$clickCounter",
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                clickCounter < 2 ? "click" : "clicks",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
              )
            ],
          ),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              // setState(() {
              //   clickCounter++;
              // });
            },
            child: const Icon(Icons.javascript),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              // if (clickCounter == 0) return;
              // setState(() {
              //   clickCounter--;
              // });
            },
            child: const Icon(Icons.css_rounded),
          ),
          const SizedBox(
            width: 10,
          ),
          CustomButton()
        ]));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {
        // setState(() {
        //   clickCounter = 0;
        // });
      },
      child: const Icon(Icons.php_rounded),
    );
  }
}
