import 'package:flutter/material.dart';
import 'package:flutter_test_aug/constants/colors.dart';

class CheckOutBottomBar extends StatelessWidget {
  const CheckOutBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 260,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                30,
              ),
              topRight: Radius.circular(
                30,
              )),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    suffixIcon: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                      child: const Text(
                        "Apply",
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    hintText: '   Enter Discount Code',
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: cartPageprimary,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: searchFieldFilledColor),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: searchFieldFilledColor),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: searchFieldFilledColor),
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Text(
                    r"$245.00",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
              child: Divider(
                height: 20,
                thickness: .5,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    r"$245.00",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: checkoutButtonColor),
                child: const Center(
                    child: Text(
                  "CheckOut",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ))
          ],
        ));
  }
}
