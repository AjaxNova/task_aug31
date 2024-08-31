import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_aug/constants/colors.dart';

PreferredSize cartAppBar(Size size, BuildContext context) {
  return PreferredSize(
    preferredSize: Size(double.infinity, size.height * 0.7),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: SizedBox(
          height: size.height * 0.07,
          width: double.infinity,
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Card(
                  color: appBarIconColor,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: appBarIconColor,
                    radius: 23,
                    child: Icon(
                      CupertinoIcons.left_chevron,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.25,
              ),
              const Text(
                "My Cart",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          )),
    ),
  );
}
