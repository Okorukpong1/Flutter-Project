import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(29.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Image.asset('lib/Images/cashir-logo.jpg', height: 38),
              const SizedBox(height: 25),
              const Text(
                "Access your cash bank",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 2, 75, 170),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Login to access your slice of financial freedom and social connections",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 2, 63, 109),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 58,
                padding: const EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(244, 238, 235, 235),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cashir tag or mobile number",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(131, 24, 24, 24),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 58,
                padding: const EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(244, 238, 235, 235),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(131, 24, 24, 24),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.visibility, color: Colors.grey),
                  ],
                ),
              ),
              const SizedBox(height: 1),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 2, 75, 170),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 49, 105, 179),
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(15),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 60),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "New user? ",
                    style: TextStyle(
                      color: const Color.fromARGB(131, 24, 24, 24),
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                          color: Colors.blue, // different colour
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
