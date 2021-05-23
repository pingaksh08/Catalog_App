import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name;
  bool buttonstate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome $name',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Username',
                      labelText: 'Username',
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter password', labelText: 'Password'),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        buttonstate = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, '/home');
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: buttonstate ? 50 : 100,
                      alignment: Alignment.center,
                      child: buttonstate
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.purple[800],
                        borderRadius:
                            BorderRadius.circular(buttonstate ? 50 : 8),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  // onPressed: () {
                  // Navigator.pushNamed(context, "/home");
                  // },
                  // style: TextButton.styleFrom(minimumSize: Size(80, 40)),
                  // child: Text('login'),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
