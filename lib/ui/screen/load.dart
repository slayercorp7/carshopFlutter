// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:carrito_de_compras/ui/screen/page_detalle.dart';
import 'package:carrito_de_compras/ui/widget/google_boton.dart';
import 'package:carrito_de_compras/bloc/bloc_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Load extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF937EB9),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('art#1', '\$00.00', 'assets/img/shoes1_1.png',
                      false, false, context),
                  _buildCard('art#2', '\$00.00', 'assets/img/shoes1_2.png',
                      true, false, context),
                  _buildCard('art#3', '\$00.00', 'assets/img/shoes1_3.png',
                      false, true, context),
                  _buildCard('art#4', '\$00.00', 'assets/img/shoes2_2.png',
                      false, false, context),
                  Container(
                      width: 400,
                      height: 70,
                      margin: EdgeInsets.only(left: 0),
                      alignment: Alignment.topRight,
                      child: GoogleBtn(
                          heightC: 200.0,
                          widhtC: 100.0,
                          onPressed: () {
                            BlocUser.out();
                          },
                          path: "assets/img/out.png")),
                ],
              ),
            ),
            SizedBox(height: 15.0),
          ],
        ));
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PageDetalle(
                      pathImg: imgPath, cprecio: price, cname: name)));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Center(
                    child: RatingBar.builder(
                      itemCount: 1,
                      initialRating: 0,
                      itemSize: 28,
                      itemBuilder: (context, _) {
                        return Icon(Icons.favorite, color: Colors.red);
                      },
                      onRatingUpdate: (raiting) {
                        // ignore: avoid_print
                        print(raiting);
                      },
                    ),
                  ),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style:
                          TextStyle(color: Color(0xFFCC8053), fontSize: 14.0)),
                  Text(name,
                      style:
                          TextStyle(color: Color(0xFF575E67), fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              Icon(Icons.shopping_basket,
                                  color: Color(0xFF424242), size: 12.0),
                              Text('Add to cart',
                                  style: TextStyle(
                                      color: Color(0xFF424242), fontSize: 12.0))
                            ],
                            if (added) ...[
                              Icon(Icons.remove_circle_outline,
                                  color: Color(0xFFD17E50), size: 12.0),
                              Text('3',
                                  style: TextStyle(
                                      color: Color(0xFFD17E50),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0)),
                              Icon(Icons.add_circle_outline,
                                  color: Color(0xFFD17E50), size: 12.0),
                            ]
                          ]))
                ]))));
  }
}
