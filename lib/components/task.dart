import 'package:flutter/material.dart';
import 'package:my_app/components/difficulty.dart';

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
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
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
                      Difficulty(difficultyLvL: widget.difficulty)
                    ],
                  ),
                  SizedBox(
                    height: 52,
                    width: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          lvl++;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
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
                  child: SizedBox(
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
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
