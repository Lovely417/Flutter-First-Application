
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool validateForm(){

  if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(emailController.text)){

    print('Email is incorect');
    return false;
  }else if(passwordController.text.length<4){
    print('Incorect Password');
    return false;
  }else{
    return true;
  }
}

void performLogin(){
  if(validateForm()){
    print('Login Successfull');
  }
}


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[600],
        title: Text(
          // Text widget
          "Login Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        children: [
          Lottie.network("https://lottie.host/b4768c62-7332-4603-bf9f-fe012e408ac6/kEaKLoROyE.json", height: 200),
        // ListView to add scrolling functionality of Column (widgets)
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            hintText: 'Email', border: OutlineInputBorder(),
          ),
        ),
        Container(height: 30),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
          hintText: 'Password', border: OutlineInputBorder(),
          ),
        ),
        Container(height: 30),
        ElevatedButton(onPressed: () {
          performLogin();
          //print(emailController.text);
        }, child: Text("Login"))
      ]),
    );
  }
}