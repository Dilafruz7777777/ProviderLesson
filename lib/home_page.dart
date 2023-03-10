import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'OnePage.dart';
import 'controller.dart';
import 'next_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> list = [
    NextPage(title: "Next Page"),
    OnePage(title: "One Page")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: IndexedStack(
        index: context.watch<AppController>().currentIndex,
        children: list,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<AppController>().currentIndex,
        onTap: (value) {
          context.read<AppController>().setIndex(value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(Icons.home),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red

                          , shape: BoxShape.circle),
                      padding: EdgeInsets.all(4),
                      child: Text(
                        context.watch<AppController>().CountChange.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
