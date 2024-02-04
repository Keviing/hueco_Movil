

import 'package:flutter/material.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/home_page.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:hueca_movil/features/user_auth/presentation/widgets/form_container_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body:  Center(
        child:  Padding(
          padding:const EdgeInsets.symmetric(horizontal: 15 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Login",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const FormContainerWidget(
                
                hintText: "Email",
                isPasswordField: false,
          
              ),
              const SizedBox(height:10 ,),
              const FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
          
              ),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                   borderRadius: BorderRadius.circular(15) 
                  ),
                  child: const Center(child:  Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpPage()),
                            (route) => false,
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              ],
          ),
        ),
      ),
    );
  }
}