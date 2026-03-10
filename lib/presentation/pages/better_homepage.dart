import 'package:flutter/material.dart';

class BetterHomePage extends StatelessWidget {
  const BetterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppBarComponent(),
      body: SafeArea(
        child: Column(
          children: [
            // HomeWalletBalanceComponent(),
            // HomeQuickActionsComponents(),
            DailyRewardsFeatureComponent(),
          ],
        ),
      ),
      // bottomNavigationBar: const Placeholder(),
    );
  }
}

class HomeAppBarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  const HomeAppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  Size get preferredSize => Size.fromHeight(40);
}

class HomeWalletBalanceComponent extends StatelessWidget {
  const HomeWalletBalanceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomeQuickActionsComponents extends StatelessWidget {
  const HomeQuickActionsComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DailyRewardsFeatureComponent extends StatelessWidget {
  const DailyRewardsFeatureComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Color(0xFFFEC700),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            bottom: 0,
            right: 16,
            top: 60,
            child: Image.asset(
              "lib/Images/gift (1).png",
              color: Color(0xFFE7B90E),
              width: 60,
              height: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Daily Rewards",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Claim your daily rewards and earn points!"),
                      ],
                    ),
                    _DayTag(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DayTag extends StatelessWidget {
  const _DayTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Day 3", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
