import 'package:flutter/material.dart';
import 'package:flutter_test_aug/constants/colors.dart';
import 'package:flutter_test_aug/widgets/cart_app_bar.dart';
import 'package:flutter_test_aug/widgets/cart_checkout_bar.dart';
import 'package:flutter_test_aug/widgets/custom_cart_widget.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CheckOutBottomBar(),
        backgroundColor: cartPageScaffoldColor,
        appBar: cartAppBar(size, context),
        body: ListView(
          children: const [
            CustomCartItemWidget(
              amount: r"$70.00",
              itemPath: "asset/images/sweater_2.png",
              itemCategory: "Woman Fashion",
              itemName: "Woman Sweater",
            ),
            CustomCartItemWidget(
              amount: r"$55.00",
              itemPath: "asset/images/smart_watch.png",
              itemCategory: "Electronics",
              itemName: "Smart Watch",
            ),
            CustomCartItemWidget(
              amount: r"$70.00",
              itemPath: "asset/images/headphones-background-design.png",
              itemCategory: "Electronics",
              itemName: "Wireless headphone",
            )
          ],
        ),
      ),
    );
  }
}
