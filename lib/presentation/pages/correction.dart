import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/rewards_page.dart';
import 'package:flutter_application_2/presentation/pages/wallet_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;
  void naviBar(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  final List<Widget> pages = [WalletPage(), RewardsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                          label: Text("Rewards"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1065FC),
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/Icon.png', width: 24, height: 24),
                        const SizedBox(height: 8),
                        const Text("Total Balance"),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "₦447,803.92",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Image.asset(
                          'assets/eye.png',
                          width: 24,
                          height: 24,
                          color: Color(0xFF1065FC),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF1065FC),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Quick Actions",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 12),
                    Center(child: Text("Activities")),
                  ],
                ),
                const SizedBox(height: 10),
                GridView.count(
                  childAspectRatio: 1.4,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0XFFFFEDD5),
                        borderRadius: BorderRadius.circular(21),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                "Send",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            right: 10,
                            bottom: 0,
                            child: Transform.rotate(
                              angle: 0.01,
                              child: Image.asset(
                                'assets/send-line-skew.png',
                                width: 50,
                                height: 70,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF3E8FF),
                        borderRadius: BorderRadius.circular(21),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                "Add",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            right: 8,
                            bottom: 0,
                            child: Transform.rotate(
                              angle: 0.01,
                              child: Image.asset(
                                'assets/add.png',
                                width: 90,
                                height: 70,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Color(0XFFDCFCE7),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                "Pay",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 60,
                            right: 20,
                            bottom: 0,
                            child: Transform.rotate(
                              angle: 0.001,
                              child: Image.asset(
                                'assets/arrow-up-right.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFCE7F3),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                "Flash",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            top: 40,
                            right: 8,
                            bottom: 0,
                            child: Transform.rotate(
                              angle: 0.001,
                              child: Image.asset(
                                'assets/flash.png',
                                width: 90,
                                height: 70,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                Column(
                  children: [
                    SizedBox(height: 20),

                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFC107),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Daily Rewards",
                                    style: TextStyle(
                                      color: Color(0xFF1A3B8E),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Don't lose your streak",
                                    style: TextStyle(
                                      color: Color(0xFF5C6881),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                width: 80,
                                height: 80,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      top: 20,
                                      width: 86,
                                      child: Image.asset(
                                        'assets/gift (1).png',
                                        fit: BoxFit.fill,
                                        color: Color(0xFFE7B90E),
                                      ),
                                    ),

                                    Positioned(
                                      top: 3,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1065FC),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: const Text(
                                          "Day 3",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          Row(
                            children: [
                              SizedBox(
                                child: Container(
                                  height: 16,
                                  width: 145,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE7B90E),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: FractionallySizedBox(
                                    alignment: Alignment.centerLeft,
                                    widthFactor: 0.4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF1065FC),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),

                              const Text(
                                "3/7 Days",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF5C6881),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: BottomNavigationBar(
              currentIndex: selectIndex,
              onTap: naviBar,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey.shade500,
              backgroundColor: Colors.grey.shade100,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: Color(0xFF1065FC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('assets/home-happy.png', width: 24),
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Icon (1).png',
                    width: 24,
                    height: 24,
                  ),
                  label: "Rewards",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/Icon.png', width: 24, height: 24),
                  label: "Wallet",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
