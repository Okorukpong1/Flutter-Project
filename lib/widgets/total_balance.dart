import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Icon.png', width: 24, height: 24),
            const SizedBox(width: 8),
            const Text("Total Balance"),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "₦447,803.92",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            Image.asset(
              'assets/eye.png',
              width: 24,
              height: 24,
              color: const Color(0xFF1065FC),
            ),
          ],
        ),
      ],
    );
  }
}
