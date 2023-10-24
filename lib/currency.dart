import 'package:flutter/material.dart';
import 'package:currencyconverter/css.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});
  @override
  State createState() => _Stateful();
}

class _Stateful extends State {
  double output = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Curreny Converter App"),
        backgroundColor: const Color.fromRGBO(54, 69, 79, 100),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 150),
              child: const Text(
                "Currency Converter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: textEditingController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                style: const TextStyle(color: Colors.white, letterSpacing: 1),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.black,
                    enabledBorder: borderunder,
                    focusedBorder: borderout,
                    suffixIcon: Icon(Icons.abc_outlined, color: Colors.white),
                    prefixIcon:
                        Icon(Icons.monetization_on, color: Colors.white),
                    label: Text("Enter amount in INR"),
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.white)),
                  elevation: 5.0,
                  backgroundColor: const Color.fromRGBO(54, 69, 79, 100),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  setState(() {
                    output = double.parse(textEditingController.text) / 80;
                  });
                },
                child: const Text("CONVERT to USD",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50, top: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.white),
                  ),
                  backgroundColor: const Color.fromARGB(156, 0, 0, 0),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {},
                child: Text("Amount in USD : " + output.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
