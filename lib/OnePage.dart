import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key, required this.title});

  final String title;

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextFormField(),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<AppController>().addCount();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}