import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_aug/constants/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          suffixIcon: Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: Colors.grey)),
            ),
            child: const Icon(Icons.sort),
          ),
          hintText: 'Search..',
          hintStyle: const TextStyle(color: Colors.grey),
          fillColor: searchFieldFilledColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: searchFieldFilledColor),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: searchFieldFilledColor),
            borderRadius: BorderRadius.circular(30),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: searchFieldFilledColor),
            borderRadius: BorderRadius.circular(30),
          )),
    );
  }
}
