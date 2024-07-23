import 'package:counterriverpod/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("counter riverpod"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("here is counter add"),
            Text("$counter"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              ref.read(counterProvider.notifier).increment();
            },
          ),
          SizedBox(width: 20,),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              ref.read(counterProvider.notifier).decrement();
            },
          ),
        ],
      ),
    );
  }
}
