import 'package:flutter/material.dart';
import 'package:my_expenses/pages/home_page/widgets/account_balance.dart';
import 'package:my_expenses/pages/home_page/widgets/payments.dart';
import 'package:my_expenses/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = (size.height * 68) / 100;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: 'My ',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Color(verde)),
            children: [
              TextSpan(
                text: "Expenses",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(azul)),
              ),
            ],
          ),
        ),
      ),
      body: Stack(children: [
        Payments(size: size, height: height),
        AccountBalance(height: height),
      ]),
    );
  }
}
