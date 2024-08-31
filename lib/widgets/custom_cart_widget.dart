import 'package:flutter/material.dart';
import 'package:flutter_test_aug/constants/colors.dart';

class CustomCartItemWidget extends StatelessWidget {
  final String itemName;
  final String itemCategory;
  final String itemPath;
  final String amount;

  const CustomCartItemWidget({
    super.key,
    required this.itemName,
    required this.itemCategory,
    required this.itemPath,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1),
      child: Card(
        elevation: 2,
        surfaceTintColor: Colors.transparent,
        color: Colors.white,
        child: SizedBox(
          height: 120,
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: cartPageprimary,
                      borderRadius: BorderRadius.circular(12)),
                  width: 80,
                  child: Image(image: AssetImage(itemPath)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                itemName,
                                style: const TextStyle(
                                    fontSize: 21, fontWeight: FontWeight.bold),
                              ),
                              const Icon(
                                Icons.delete,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              itemCategory,
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            r"$70.00",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: cartPageprimary,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 30,
                              width: 70,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
