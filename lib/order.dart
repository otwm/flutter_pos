import 'package:flutter/material.dart';
import 'package:flutter_pos/models/menu_model.dart';

import 'api/api.dart';
import 'menu.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  late Future<List<MenuModel>> menuList;

  @override
  void initState() {
    super.initState();
    menuList = listMenu();
  }

  Widget buildList(List<MenuModel> menus) {
    return Wrap(
      children: menus.map((e) => Menu(menuModel: e)).toList(),
    );
  }

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
          FutureBuilder<List<MenuModel>>(
              future: menuList,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return buildList(snapshot.data!);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}에러!!");
                }
                return const CircularProgressIndicator();
              }),
          Container(child: null)
        ],
      ),
    );
  }
}
