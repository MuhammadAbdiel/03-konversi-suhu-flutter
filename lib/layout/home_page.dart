import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _inputUser = TextEditingController();

  double _celcius = 0;
  double _fahrenheit = 0;
  double _kelvin = 0;
  double _reamur = 0;

  void temperatureConversion() {
    setState(() {
      _celcius = double.parse(_inputUser.text);
      _fahrenheit = (_celcius * (9 / 5)) + 32;
      _reamur = (4 / 5) * _celcius;
      _kelvin = _celcius + 273.15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konverter Suhu'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFormField(
              controller: _inputUser,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukkan suhu dalam celcius',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('Suhu dalam Celcius'),
                    const SizedBox(height: 15),
                    Text(
                      '' + _celcius.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Suhu dalam Fahrenheit'),
                    const SizedBox(height: 15),
                    Text(
                      '' + _fahrenheit.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('Suhu dalam Kelvin'),
                    const SizedBox(height: 15),
                    Text(
                      '' + _kelvin.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Suhu dalam Reamur'),
                    const SizedBox(height: 15),
                    Text(
                      '' + _reamur.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  temperatureConversion();
                },
                child: const Text(
                  'Konversi Suhu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
