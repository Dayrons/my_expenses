import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
      margin: const EdgeInsets.only(bottom: 20.00),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Filter",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.filter_alt,
            color: Colors.white,
          )
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.only(bottom: 20.00),
      height: 30.00,
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.00),
              width: 65.00,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                color: Colors.white,
              ),
            );
          },
        ),
      ),
    ),
    ],);
  }
}