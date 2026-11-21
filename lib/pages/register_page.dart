
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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

                const SizedBox(height: 40),

                // Registration heading
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'serif',
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Name input
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 12),

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

                const SizedBox(height: 12),

                // Confirm password input
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 18),

                // Register button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      // Registration functionality will be added later
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF79CE8D),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Login navigation
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Already have an account? Login',
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
