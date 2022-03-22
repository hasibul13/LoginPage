import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {



  var emailController =TextEditingController();
  var passwordController =TextEditingController();

  void _validationCheck(var email, var password){
    if(email.toString().isNotEmpty || password.toString().isNotEmpty){
      print("Please provide all the information");
    }else{
      print("information $email and $password");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome Back", style: TextStyle(color: Colors.cyanAccent, fontSize: 30),
            ),
            const Text("Sign to Continue",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900
            ),),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20,bottom: 5),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20,bottom: 5),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                _validationCheck(emailController.text, passwordController.text);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 120, right: 120, top: 15),
                width: double.infinity,
                height: 40,
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  color: Colors.white
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
