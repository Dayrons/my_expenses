import 'package:flutter/material.dart';
import 'package:my_expenses/utils/colors.dart';

class AccountBalance extends StatelessWidget {
  final double height;
  const AccountBalance({required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: height - 60,
      left: 0,
      right: 0,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.00),
        padding: const EdgeInsets.symmetric(horizontal: 10.00, vertical: 10.00),
        width: double.infinity,
        height: 180.00,
        decoration: BoxDecoration(
          color: const Color(gris),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const  [
                 Text(
                "Account  balance",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.00,
                  color: Color(azul),
                ),
              ),
               SizedBox(
                height: 10.00,
              ),
               Text(
                "\$515.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.00,
                  color: Color(azul),
                ),
              ),

              ],),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:const [
                   ButtonIcon(icono: Icons.description,),
                   ButtonIcon(icono: Icons.expand_less,),
                   ButtonIcon(icono: Icons.expand_more,),
                   ButtonIcon(icono: Icons.share,),
                 
                  
                ],
              )
            ]),
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  final IconData icono;
  const ButtonIcon({
    required this.icono,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.00,
      height: 50.00,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(azul),
      ),
      child:  Center(child: Icon(icono, color: Colors.white,)),
    );
  }
}
