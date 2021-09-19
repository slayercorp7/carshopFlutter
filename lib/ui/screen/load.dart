// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:carrito_de_compras/ui/screen/cart_page.dart';
import 'package:carrito_de_compras/ui/widget/botton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Load extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return load();
  }
}

Widget load() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      centerTitle: true,
      title:
          Text('', style: TextStyle(fontSize: 20.0, color: Color(0xFFB71C1C))),
    ),
    body: ListView(
      padding: EdgeInsets.only(left: 20.0),
      children: <Widget>[
        SizedBox(height: 15.0),
        Text('Tienda online',
            style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold)),
        SizedBox(height: 15.0),
        TabBar(
            controller: null,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFF424242C),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xFF424242),
            tabs: [
              Tab(
                child: Text('artículos',
                    style: TextStyle(
                      fontSize: 21.0,
                    )),
              )
            ]),
        Container(height: 50.0, width: double.infinity, child: CartPage())
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      backgroundColor: Color(0xFF424242),
      child: Icon(Icons.time_to_leave_outlined),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: Botton(),
  );
}
