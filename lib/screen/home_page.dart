import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _turns = 0;
  late double _value = 0.0;

  void _onChanged(double value) {
    setState(() {
      _value = value;
      _turns = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rotated Box'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              Slider(
                value: _value,
                onChanged: _onChanged,
                min: 0.0,
                max: 4.0,
              ),
              RotatedBox(
                quarterTurns: _turns,
                child: const Text('Hello World'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
