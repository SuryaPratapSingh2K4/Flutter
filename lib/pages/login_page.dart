import 'package:flutter/rendering.dart';
import 'package:meta/dart2js.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            Text(
              'Welcome Back!',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email I'd",
                    hintText: "Enter your Email I'd",
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Sign In',
                    hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45)),
                    fillColor: Colors.deepPurple.shade600,
                    filled: true),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left:265),
              child: Row(
                children: [
                  TextButton(onPressed: (){}, child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 105),
              child: Row(
             
                children: [
                  TextButton(
                      onPressed: () {}, child: Text('create an account?')),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
