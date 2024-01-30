//to create stateless page, Type - stl
//to create stateful page, Type - stf

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override                             //Scaffold : ROOT Widget of our page.

  Widget build(BuildContext context) { // widget is data type and build is method.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text('Home Page',
        style: TextStyle(
          color: Colors.white,)
        ),
      ),
      body: ListView(
        children: [
          Text('Hello World'),
          Image.network('https://cdn.pixabay.com/photo/2023/11/29/10/32/mountains-8419249_1280.jpg'),
          Text('Hello World'),
          TextField(),
          ElevatedButton(onPressed: () {
            print('WELCOME');
          }, child: Text('Submit'))
          
          ]
        ),
    );
                                      
  }
}
