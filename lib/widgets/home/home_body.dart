import 'package:flutter/material.dart';
import 'package:store/constans.dart';
import 'package:store/screens/details_screen.dart';
import 'package:store/widgets/home/product_card.dart';

import '../../models/product.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  product: products[index],
                  itemIndex: index,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          product: products[index],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
