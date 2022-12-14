import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.kelvin, required this.reamor}) : super(key: key);

  final double kelvin;
  final double reamor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text(
              "Suhu Dalam Kelvin",
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$kelvin',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Text(
              "Suhu Dalam Reamor",
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$reamor',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
