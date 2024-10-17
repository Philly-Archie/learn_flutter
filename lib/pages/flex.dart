import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  const FlexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Flex Styling"),
        elevation: 3,
        leading: Icon(Icons.table_rows_outlined),
      ),
      body: Flex(direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 3,
          child: Container(
              height: 100,
              color: Colors.blue,
            child: const Text("Many Texts Many TextsMany Texts Many Texts Many Texts"
                "Many Texts Many Texts Many Texts Many Texts Many Texts Many"
                " Texts Many Texts "
                "Many Texts Many Texts Many Texts Many Texts Many Texts Many"
                " Texts Many Texts Many Texts Many Texts Many Texts Many Texts Many Texts Many Texts"
                "Many Texts Many Texts Many Texts Many Texts Many Texts Many"
                " Texts Many Texts "),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
              height: 100,
              color: Colors.red
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
              height: 100,
              color: Colors.green
          ),
        ),
      ],
      ),
    );
  }
}
