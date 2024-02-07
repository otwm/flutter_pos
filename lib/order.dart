import 'package:flutter/material.dart';
import 'package:flutter_pos/model/menu_model.dart';

import 'menu.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter pos'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Wrap(
            children: [
              Menu(
                menuModel: MenuModel(name: '해장국', price: 10000),
                color: Colors.blueAccent,
              ),
              Menu(
                menuModel: MenuModel(name: '떡복이', price: 5000),
                color: Colors.cyanAccent,
              ),
              Menu(
                menuModel: MenuModel(name: '쉐프의 추천', price: 8000),
                color: Colors.amberAccent,
              ),
              Menu(
                menuModel: MenuModel(name: '돈까스', price: 8000),
              )
            ],
          ),
          Container(child: null)
        ],
      ),
    );
  }
}
