import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.grade),
            title: Text('Subject ${index + 1}'),
            subtitle: Text('Grade: ${String.fromCharCode(65 + index % 3)}'),
          );
        },
      ),
    );
  }
}
