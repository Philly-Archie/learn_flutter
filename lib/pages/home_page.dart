import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/pages/rows.dart';
import 'package:learn_flutter/pages/stack.dart';

import 'column.dart';
import 'flex.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("HomePage",
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Toast Package"),
              subtitle: const Text("Toast Testing"),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.notifications),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "This is a simple toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
            Divider(),
            ListTile(
              title: const Text("Columns Styling"),
              subtitle: const Text("How to work with columns"),
              trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              leading: const Icon(Icons.home_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ColumnsPage())
                );
              },
            ),
            Divider(),
            ListTile(
              title: const Text("Rows Styling"),
              subtitle: const Text("How to work with rows"),
              trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              leading: const Icon(Icons.home_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RowsPage())
                );
              },
            ),
            Divider(),
            ListTile(
              title: const Text("Flex Styling"),
              subtitle: const Text("How to work with flex boxes"),
              trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              leading: const Icon(Icons.rowing_sharp),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FlexPage())
                );
              },
            ),
            Divider(),
            ListTile(
              title: const Text("Stack Styling"),
              subtitle: const Text("How to work with stacks"),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.stacked_bar_chart),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StackPage())
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
