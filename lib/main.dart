import 'package:flutter/material.dart';
//import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/products_page.dart';

//import 'home_page.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My First App',
    home: ProductsPage(),
    ));
}