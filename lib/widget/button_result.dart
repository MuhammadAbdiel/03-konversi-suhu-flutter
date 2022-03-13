import 'package:flutter/material.dart';

class ButtonResult extends StatelessWidget {
  const ButtonResult({Key? key, required this.temperatureConversion})
      : super(key: key);

  final Function temperatureConversion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
