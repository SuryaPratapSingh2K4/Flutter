import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/material.dart';

class Taskpage extends StatefulWidget {
  @override
  State<Taskpage> createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  bool? isChecked = false;
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            Container(
              width: 414,
              height: 56,
              padding: EdgeInsets.only(left: 11, top: 6, bottom: 6),
              child: Text(
                'Welcome Back! $name',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextFormField(
                obscureText: true,
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
              height: 5,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Checkbox(
                      value: isChecked,
                      activeColor: Colors.black,
                      tristate: true,
                      onChanged: (newbool) {
                        SetState() {
                          isChecked = newbool;
                        }
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text('Remember me'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ));
              },
              child: Text(
                'SignIn',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                  minimumSize: Size(400, 60)),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(left: 15, right: 15),
            //   child: ElevatedButton(
            //       onPressed: () {},
            //       child: TextFormField(
            //         textAlign: TextAlign.center,
            //         decoration: InputDecoration(
            //           hintText: 'SignIn',
            //           hintStyle: TextStyle(
            //             fontSize: 20,
            //             color: Colors.white,
            //           ),

            //           border: InputBorder(borderSide: BorderRadius.circular(radius))
            //       )),
            // ),
            TextButton(onPressed: () {}, child: Text('Continue by using')),
            Column(
              children: [
                SignInButton(Buttons.Google, onPressed: () {}),
                SignInButton(Buttons.Facebook, onPressed: () {}),
              ],
            ),
            // Column(
            //   children: [
            //     Image.asset("assets/google_image.png", height: 10,width: 10,)
            //   ],
            // ),
            SizedBox(
              height: 39,
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
