import 'package:flutter/material.dart';

class BetterHomePage extends StatelessWidget {
  const BetterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarComponent(),
      body: Column(
        children: [
          HomeWalletBalanceComponent(),
          HomeQuickActionsComponents(),
          DailyRewardsFeatureComponent(),
        ],
      ),
      bottomNavigationBar: const Placeholder(),
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
    return const Placeholder();
  }
}
