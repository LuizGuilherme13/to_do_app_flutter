import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('To Do'),
        ),
        body: ListView(
          children: [
            Task('Learn Flutter'),
            Task('Learn Flutter'),
            Task('Learn Flutter'),
            Task('Learn Flutter'),
            Task('Learn Flutter'),
            Task('Learn Flutter'),
            Task('Learn Flutter'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String name;

  const Task(this.name, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int lvl = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(children: [
          Container(
            color: Colors.purple,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 100,
                    ),
                    Container(
                      width: 160,
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                            fontSize: 21, overflow: TextOverflow.ellipsis),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            lvl++;
                          });
                          print(lvl);
                        },
                        child: Icon(Icons.arrow_drop_up))
                  ],
                ),
              ),
              Text(
                'Nivel: $lvl',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ]),
      ),
    );
  }
}
