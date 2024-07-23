import 'package:counterriverpod/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(CounterRiverpod());
}

class CounterRiverpod extends StatelessWidget {
  const CounterRiverpod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProviderScope(child: CounterScreen()),
    );
  }
}