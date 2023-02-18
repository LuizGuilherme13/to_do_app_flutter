import 'package:flutter/material.dart';
import 'package:my_app/components/task.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('To Do'),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
