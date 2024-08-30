import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_aug/constants/colors.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, size.height * 0.7),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: SizedBox(
                  height: size.height * 0.07,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: appBarIconColor,
                        radius: 23,
                        child: Icon(
                          CupertinoIcons.left_chevron,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                      ),
                      const Text("My Cart")
                    ],
                  )),
            )),
      ),
    );
  }
}
