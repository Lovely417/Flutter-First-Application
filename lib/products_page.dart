import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/products_model.dart';
//import 'dart:convert';

//import 'package:flutter_workshop_cu/products_model.dart';

Future<List<ProductsModel>> getProducts() async {

  Dio dio = Dio();
  List<ProductsModel> products = [];

  final result = await dio.get('https://fakestoreapi.com/products');

  if (result.statusCode == 200) {
    for (var product in result.data) {
      products.add(ProductsModel.fromJson(product));
    }
  }
  return products;
}


class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                getProducts();
              },
              icon: Icon(
                Icons.electric_car_outlined,
                color: Colors.white,
              ))
        ],
        title: Text(
          'Products',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Image.network(
                  'https://cdn.pixabay.com/photo/2023/12/15/22/37/mountains-8451480_1280.jpg'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10,
                  ),
                  Text(
                    'Product Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                      'Casjd hshjxbajshjajhabh adh dsjhvchjsdbchjbds jhc vasdhjv chjds  vcdjhv'),
                  Container(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Category'),
                      Spacer(),
                      Text(
                        '110\$',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.red),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Image.network(
                  'https://cdn.pixabay.com/photo/2023/12/15/22/37/mountains-8451480_1280.jpg'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10,
                  ),
                  Text(
                    'Product Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                      'Casjd hshjxbajshjajhabh adh dsjhvchjsdbchjbds jhc vasdhjv chjds  vcdjhv'),
                  Container(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Category'),
                      Spacer(),
                      Text(
                        '110\$',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.red),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}