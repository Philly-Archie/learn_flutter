import 'package:flutter/material.dart';

class ColumnsPage extends StatelessWidget {
  const ColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Columns Styling"),
        elevation: 3,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //vertical axis format
        crossAxisAlignment: CrossAxisAlignment.start, //horizontal axis format
        children: [
          Container(
            width: 300,
            height: 50,
            color: Colors.black,
          ),
          Container(
            width: 300,
            height: 50,
            color: Colors.yellow,
          ),
          Container(
            width: 300,
            height: 50,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
