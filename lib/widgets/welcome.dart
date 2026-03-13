import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Welcome back,", style: TextStyle(fontSize: 16)),
            Text(
              "David Cashir",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1065FC),
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/bell-rounded.png',
                width: 24,
                height: 24,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'assets/Icon (1).png',
                width: 24,
                height: 24,
                color: Colors.white,
              ),
              label: const Text("Rewards"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1065FC),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
