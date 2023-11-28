import 'package:flutter/material.dart';


void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.pinkAccent,
        leading: const Icon(Icons.code),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                email = value;
              },
              decoration: const InputDecoration(
                labelText: "Email Address",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                password = value;
              },
              decoration: const InputDecoration(
                labelText: "Password",
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  print("Email: $email");
                  print("Password: $password");
                },
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
