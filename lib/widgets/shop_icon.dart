import 'package:flutter/material.dart';

class ShopIcon extends StatelessWidget {
  const ShopIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Stack(
        children: [
          Icon(
            Icons.shopping_bag_outlined,
            size: 28,
            color: Colors.black,
          ),
          Positioned(
            bottom: 0,
            child: CircleAvatar(
              maxRadius: 6,
              backgroundColor: Colors.red,
              child: Text(
                '3',
                style: TextStyle(fontSize: 8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
