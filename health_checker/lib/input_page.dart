import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(15)),
                      height: 200,
                      width: 170,
                      margin: const EdgeInsets.all(15)),
                ),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(15)),
                      height: 200,
                      width: 170,
                      margin: const EdgeInsets.all(15)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(15)),
                height: 200,
                width: 170,
                margin: const EdgeInsets.all(15)),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(15)),
                    height: 200,
                    width: 170,
                    margin: const EdgeInsets.all(15)),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(15)),
                      height: 200,
                      width: 170,
                      margin: const EdgeInsets.all(15)),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
