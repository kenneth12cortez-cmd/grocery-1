
import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [

                // Freshly header
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  decoration: BoxDecoration(
                    color: const Color(0xFF9AE2AA),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'FRESHLY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      fontFamily: 'serif',
                      color: Colors.black,
                    ),
                  ),
                ),

                const SizedBox(height: 60),

                // Login heading
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'serif',
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Email input
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 12),

                // Password input
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 18),

                // Login button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      // Login functionality will be added later
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF79CE8D),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Register navigation
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Don't have an account? Register",
                    style: TextStyle(
                      color: Color(0xFF4D9F62),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
