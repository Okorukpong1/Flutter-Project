import 'package:flutter/material.dart';

// Import your custom widgets
import 'package:flutter_application_2/widgets/welcome.dart';
import 'package:flutter_application_2/widgets/total_balance.dart';
import 'package:flutter_application_2/widgets/quick_actions_grid.dart';
import 'package:flutter_application_2/widgets/daily_rewards.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: const [
              WelcomeHeader(),
              SizedBox(height: 24),
              BalanceCard(),
              SizedBox(height: 30),
              QuickActionsGrid(),
              SizedBox(height: 40),
              DailyRewardsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
