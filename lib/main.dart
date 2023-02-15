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
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text('To Do'),
        ),
        body: ListView(
          children: const [
            Task(
                'Learn Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                1),
            Task(
                'Example task',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                2),
            Task(
                'Example task',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                3),
            Task(
                'Example task',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                4),
            Task(
                'Example task',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                5),
            Task(
                'Example task',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                4),
            Task(
                'Example task',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                3),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String name;
  final String image;
  final int difficulty;
  const Task(this.name, this.image, this.difficulty, {super.key});

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
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(4),
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4)),
                        width: 85,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            widget.image,
                            fit: BoxFit.cover,
                          ),
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          width: 160,
                          child: Text(
                            widget.name,
                            style: const TextStyle(
                                fontSize: 21, overflow: TextOverflow.ellipsis),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: (widget.difficulty >= 1)
                                  ? Colors.deepPurple
                                  : Colors.deepPurple[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: (widget.difficulty >= 2)
                                  ? Colors.deepPurple
                                  : Colors.deepPurple[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: (widget.difficulty >= 3)
                                  ? Colors.deepPurple
                                  : Colors.deepPurple[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: (widget.difficulty >= 4)
                                  ? Colors.deepPurple
                                  : Colors.deepPurple[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: (widget.difficulty == 5)
                                  ? Colors.deepPurple
                                  : Colors.deepPurple[100],
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            lvl++;
                          });
                          print(lvl);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.arrow_drop_up),
                            Text(
                              'UP',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: (widget.difficulty > 0)
                            ? (lvl / widget.difficulty) / 10
                            : 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Nivel: $lvl',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
