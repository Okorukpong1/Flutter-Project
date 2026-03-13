import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/rewards_page.dart';
import 'package:flutter_application_2/presentation/pages/wallet_page.dart';
import 'package:flutter_application_2/widgets/welcome.dart';
import 'package:flutter_application_2/widgets/nav_bar.dart';
import 'package:flutter_application_2/widgets/total_balance.dart';
import 'package:flutter_application_2/widgets/daily_rewards.dart';
import 'package:flutter_application_2/widgets/quick_actions_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onNavTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  late final List<Widget> pages = [HomeContent(), WalletPage(), RewardsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selectedIndex],
      bottomNavigationBar: CustomBottomNav(
        currentIndex: selectedIndex,
        onTap: onNavTap,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
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
