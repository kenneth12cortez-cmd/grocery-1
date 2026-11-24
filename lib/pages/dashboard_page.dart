
import 'package:flutter/material.dart';
import 'profile_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  // Profile button
  void openProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Profile button
            Positioned(
              top: 15,
              right: 20,
              child: GestureDetector(
              onTap: () => openProfile(context),
              child: const CircleAvatar(
                radius: 22,
                backgroundColor: Color(0xFF58B86B),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
