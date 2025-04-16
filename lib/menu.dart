// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pizza_menu/menu_item.dart';
import 'package:pizza_menu/pizza_data.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pizza Menu")),
      body: SingleChildScrollView(
        child: Column(
          children: 
          // _buildItems(),
          pizzaData.map((pizza)=> MenuItem(pizza: pizza)).toList(),
        ),
      ),
    );
  }

  List<MenuItem> _buildItems() {
    List<MenuItem> menusItens = [];
    for (Pizza pizza in pizzaData) {
      menusItens.add(MenuItem(
        pizza: pizza,
      ));
    }

    return menusItens;
  }
}
