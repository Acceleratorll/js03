import 'package:flutter/material.dart';
import 'package:js03/widgets/Convert.dart';
import 'package:js03/widgets/Input.dart';
import 'package:js03/widgets/Result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController();
  double celcius = 0;
  double kelvin = 0;
  double reamor = 0;
  convert() {
    setState(() {
      celcius = double.parse(myController.text);
      kelvin = celcius + 273;
      reamor = celcius * (4 / 5);
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konversi Suhu"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Input(etInput: myController),
          Result(kelvin: kelvin, reamor: reamor),
          Convert(konvertHandler: convert)
        ]),
      ),
    );
  }
}
