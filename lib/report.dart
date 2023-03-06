import 'package:flutter/material.dart';

void main() {
runApp(const Reports());
}

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Monthly Reports'),
        ),
        body: Text('report Screen'),
        ),
    );
  }
}