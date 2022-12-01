import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  double fahrenheit = 0;

  void convert() {
    setState(() {
      celcius = double.parse(myController.text);
      kelvin = celcius + 273;
      fahrenheit = celcius * (4 / 5);
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: myController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Masukkan Suhu Dalam Celcius',
                ),
              ),
              const Text(
                'Suhu dalam Kelvin',
              ),
              Text(
                '$fahrenheit',
              ),
              const Text(
                'Suhu dalam Fahrenheit',
              ),
              Text(
                '$kelvin',
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(
                      40), // fromHeight use double.infinity as width and 40 is the height
                ),
                onPressed: () {
                  convert();
                },
                child: Text('Konversi Suhu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
