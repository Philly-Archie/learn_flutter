import 'package:flutter/material.dart';

class RowsPage extends StatelessWidget {
  const RowsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Rows Styling"),
        elevation: 3,
        leading: const Icon(Icons.table_rows_rounded),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //vertical axis format
        crossAxisAlignment: CrossAxisAlignment.start, //horizontal axis format
        children: [
          Container(
            width: 30,
            height: 500,
            color: Colors.black,
          ),
          Container(
            width: 30,
            height: 500,
            color: Colors.yellow,
          ),
          Container(
            width: 30,
            height: 500,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
