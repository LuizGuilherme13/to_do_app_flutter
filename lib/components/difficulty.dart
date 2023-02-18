import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int difficultyLvL;

  const Difficulty({required this.difficultyLvL, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 14,
          color:
              (difficultyLvL >= 1) ? Colors.deepPurple : Colors.deepPurple[100],
        ),
        Icon(
          Icons.star,
          size: 14,
          color:
              (difficultyLvL >= 2) ? Colors.deepPurple : Colors.deepPurple[100],
        ),
        Icon(
          Icons.star,
          size: 14,
          color:
              (difficultyLvL >= 3) ? Colors.deepPurple : Colors.deepPurple[100],
        ),
        Icon(
          Icons.star,
          size: 14,
          color:
              (difficultyLvL >= 4) ? Colors.deepPurple : Colors.deepPurple[100],
        ),
        Icon(
          Icons.star,
          size: 14,
          color:
              (difficultyLvL == 5) ? Colors.deepPurple : Colors.deepPurple[100],
        ),
      ],
    );
  }
}
