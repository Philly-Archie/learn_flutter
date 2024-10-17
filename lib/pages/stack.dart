import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Page"),
        elevation: 3,
      ),
      body: Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            margin: const EdgeInsets.only(top: 15, left: 15),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
            margin: const EdgeInsets.only(top: 30, left: 30),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black,
            margin: const EdgeInsets.only(top: 60, left: 60),
            child: Container(
              color: Colors.white,
              height: 100,
              width: 100,
              child:  Stack(
                children: [
                  const Positioned(
                    top: 70,
                      right: 40,
                      child: Icon(Icons.notifications,
                        size: 80,
                      )),
                  Positioned(
                      top: 65,
                      right: 40,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(100))
                        ),
                        alignment: Alignment.center,
                        child: const Text("6",
                          style: TextStyle(
                            fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                    ),),
                  ))
                ],
              )
            ),
          )
        ],
      )
    );
  }
}
