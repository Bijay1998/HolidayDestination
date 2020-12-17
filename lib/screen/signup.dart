import 'package:flutter/material.dart';
import 'package:holiday_destination/services/authentication_service.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                
                
          children: [
            Text('Welcome to login/signUp page!', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                )
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                )
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              
              color: Colors.blueAccent,
              child: Text("Sign In"),
              onPressed: (){
                context.read<AuthenticationService>().signIn(
                  email: emailController.text,
                  password: passwordController.text,
                );
              },
            ),
            RaisedButton(
              color: Colors.blueAccent,
              child: Text("Sign Up"),
              onPressed: (){
                context.read<AuthenticationService>().signUp(
                  email: emailController.text,
                  password: passwordController.text,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
