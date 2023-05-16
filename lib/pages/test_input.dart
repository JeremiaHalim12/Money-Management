import 'package:flutter/material.dart';

class InputMoneyPage extends StatefulWidget {
  const InputMoneyPage({super.key});

  @override
  State<InputMoneyPage> createState() => _InputMoneyPageState();
}

class _InputMoneyPageState extends State<InputMoneyPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input your money below"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: "Amount of money"),
            ),
            ElevatedButton(onPressed: () {
              // masukin data uang ke dalam database
              // inputan bisa diubah ke money currency format
            }, child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
