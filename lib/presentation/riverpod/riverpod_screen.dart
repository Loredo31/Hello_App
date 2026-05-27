import 'package:flutter/material.dart';

class RiverpodScreen extends StatelessWidget {
  static final String name = "riverpod";

  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Counter'),
      ),
      body: Placeholder(),
    );
  }
}
