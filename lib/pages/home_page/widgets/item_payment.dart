import 'package:flutter/material.dart';
import 'package:my_expenses/utils/colors.dart';

class ItemPayment extends StatelessWidget {
  final Size size;
  final bool typePayment;
  const ItemPayment({required this.size,required this.typePayment ,super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10.00),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      margin: const EdgeInsets.only(bottom: 15.00),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Icon(
              typePayment ? Icons.trending_up :Icons.trending_down,
              color: typePayment ?const Color(verde) :const Color(rojo),
              size: 30.00,
            ),
            Text(
              "\$60",
              style: TextStyle(
                fontSize: 18.00,
                color: typePayment ? const Color(verde) :const Color(rojo),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const Text("Entrada por trabajo"),
        Container(
          width: 60,
          height: 30.00,
          decoration: const BoxDecoration(
          color: Color(gris),
          borderRadius: BorderRadius.all(Radius.circular(10))


          ),
        )
      ]),
    );
  }
}
