import 'package:flutter/material.dart';
import 'package:my_expenses/pages/home_page/widgets/filter.dart';
import 'package:my_expenses/pages/home_page/widgets/item_payment.dart';
import 'package:my_expenses/utils/colors.dart';
import 'dart:math';
class Payments extends StatelessWidget {
  final Size size;
  final double height;
   Payments({required this.size, required this.height, super.key});
   final randomNumberGenerator = Random();
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 20.00),
        decoration: const BoxDecoration(
          color: Color(azul),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          const Filter(),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ItemPayment(
                size: size,
                typePayment: randomNumberGenerator.nextBool(),
              );
            },
          ))
        ]),
      ),
    );
  }
}
