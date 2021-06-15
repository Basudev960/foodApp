import 'package:flutter/material.dart';
import 'package:onlinemomo/src/screens/login.dart';
import 'package:onlinemomo/src/widgets/commons.dart';
import 'package:onlinemomo/src/widgets/custome_text.dart';

class RegistrartionPage extends StatefulWidget {
  @override
  _RegistrartionPageState createState() => _RegistrartionPageState();
}

class _RegistrartionPageState extends State<RegistrartionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/burger.jpeg",
                  width: 150,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomeText(
                  text: "Welcome to our App",
                  size: 20,
                  colors: orange,
                  weight: FontWeight.normal,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: orange),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Username",
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.person,
                        color: orange,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: orange),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "email",
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        color: orange,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: orange),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "password",
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock,
                        color: orange,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: orange),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter you mobile number",
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.phone_android,
                        color: orange,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    color: red,
                    border: Border.all(color: orange),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, right: 4, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomeText(
                        text: "Register",
                        colors: white,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // changeScreen(context, LoginPage());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomeText(
                    text: "Login here",
                    size: 20,
                    colors: orange,
                    weight: FontWeight.normal,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
