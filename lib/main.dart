import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClickPlus() {
    setState(() {
      counter = counter + 1;
    });
  }

  void onClickMinus() {
    setState(() {
      counter = counter - 1;
      if (counter <= 0) {
        counter = 0;
      }
    });
  }

  void onClickClear() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                style: TextStyle(
                  fontSize: 30,
                ),
                'Click Count',
                overflow: TextOverflow.fade,
              ),
              Text(
                style: const TextStyle(
                  fontSize: 30,
                ),
                '$counter',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onClickPlus,
                    icon: const Icon(
                      size: 40,
                      Icons.add_box_rounded,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    onPressed: onClickClear,
                    icon: const Icon(
                      size: 40,
                      Icons.cancel_presentation_rounded,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    onPressed: onClickMinus,
                    icon: const Icon(
                      size: 40,
                      Icons.indeterminate_check_box_rounded,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
