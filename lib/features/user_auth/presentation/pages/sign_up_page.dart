


import 'package:flutter/material.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/login_page.dart';
import 'package:hueca_movil/features/user_auth/presentation/widgets/form_container_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body:  Center(
        child:  Padding(
          padding:const EdgeInsets.symmetric(horizontal: 15 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sign Up",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainerWidget(
                
                hintText: "Username",
                isPasswordField: false,
          
              ),
              const SizedBox(
                height: 10,
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
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                 borderRadius: BorderRadius.circular(15) 
                ),
                child: const Center(child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Ya tienes una cuenta?"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                            (route) => false,
                      );
                    },
                    child: const Text(
                      "Inicia sesion",
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