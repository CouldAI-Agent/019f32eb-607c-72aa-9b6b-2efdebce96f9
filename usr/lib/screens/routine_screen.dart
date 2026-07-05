import 'package:flutter/material.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Routine')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.schedule),
            title: Text('Day ${index + 1}'),
            subtitle: const Text('10:00 AM - 12:00 PM: Subject X'),
          );
        },
      ),
    );
  }
}
