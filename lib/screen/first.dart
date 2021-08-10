import 'package:finalproject/screen/login.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class first extends StatelessWidget {
  static String id = 'first';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'image/bbx.png',
            width: 500,
            height: 1000,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FlatButton(
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              child: Text(
                "Let`s Go",
                style: TextStyle(fontSize: 20),
              )),
        ),
      ),
    );
  }
}
