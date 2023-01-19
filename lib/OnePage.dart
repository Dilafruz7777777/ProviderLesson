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
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextFormField(
                controller: controller,
                onEditingComplete: (){
                  context.read<AppController>().setName(controller.text);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<AppController>().setName(controller.text);
          context.read<AppController>().addCountChange();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}