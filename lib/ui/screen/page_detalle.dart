import 'package:carrito_de_compras/ui/widget/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PageDetalle extends StatelessWidget {
  final pathImg, cprecio, cname;

  PageDetalle({this.pathImg, this.cprecio, this.cname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('',
            style: TextStyle(fontSize: 20.0, color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.auto_delete_outlined, color: Color(0xFFFFFFFF)),
            onPressed: () {},
          ),
          Container(
            child: Center(
              child: RatingBar.builder(
                itemCount: 1,
                initialRating: 1,
                itemSize: 28,
                itemBuilder: (context, _) {
                  return Icon(Icons.favorite, color: Colors.white);
                },
                onRatingUpdate: (raiting) {
                  print(raiting);
                },
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text('<Su seleccion>',
              style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF545D68))),
        ),
        SizedBox(height: 15.0),
        Hero(
            tag: Path,
            child: Image.asset(pathImg,
                height: 100.0, width: 70.0, fit: BoxFit.contain)),
        SizedBox(height: 20.0),
        Center(
          child: Text(cprecio,
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A0604))),
        ),
        SizedBox(height: 10.0),
        Center(
          child: Text(cname,
              style: TextStyle(color: Color(0xFF575E67), fontSize: 24.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 60),
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(
                'Compara precios y cancela con tu tarjeta preferida !!!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, color: Color(0xFFB4B8B9))),
          ),
        ),
        Expanded(
          child: Center(
            child: RatingBar.builder(
              itemCount: 6,
              initialRating: 3,
              //itemSize: 20,
              itemBuilder: (context, _) {
                return Icon(Icons.brightness_1, color: Colors.pinkAccent);
              },
              onRatingUpdate: (raiting) {
                print(raiting);
              },
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Center(
            child: Container(
                margin: EdgeInsets.only(top: 100),
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xFFA13737)),
                child: Center(
                    child: Text(
                  'reservar',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF424242),
        child: Icon(Icons.access_time_filled),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Botton(),
    );
  }
}
