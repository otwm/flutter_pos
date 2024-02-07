import 'package:flutter/material.dart';
import 'package:flutter_pos/models/menu_model.dart';

class Menu extends StatelessWidget {
  final MenuModel menuModel;
  final Color color;
  const Menu(
      {super.key, required this.menuModel, this.color = Colors.deepOrange});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: color,
      child: SizedBox(
        width: 100,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(menuModel.name),
        ),
      ),
    );
  }
}
