import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                // Header
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
                            'lib/Images/bell-rounded.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Image.asset(
                            'lib/Images/Icon (1).png',
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

                // Total Balance
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/Images/Icon.png',
                          width: 24,
                          height: 24,
                        ),
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
                          'lib/Images/eye.png',
                          width: 24,
                          height: 24,
                          color: Color(0xFF1065FC),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // Quick Actions
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
                              angle: 0.01, // different angle per box
                              child: Image.asset(
                                'lib/Images/send-line-skew.png', // replace with your image path
                                width: 50, // different size per box
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
                              angle: 0.01, // different angle per box
                              child: Image.asset(
                                'lib/Images/add.png', // replace with your image path
                                width: 90, // different size per box
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
                              angle: 0.001, // different angle per box
                              child: Image.asset(
                                'lib/Images/arrow-up-right.png', // replace with your image path
                                width: 70, // different size per box
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
                              angle: 0.001, // different angle per box
                              child: Image.asset(
                                'lib/Images/flash.png', // replace with your image path
                                width: 90, // different size per box
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

                // Daily Rewards
                Column(
                  children: [
                    SizedBox(height: 20),

                    // Daily Rewards Section
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFC107), // yellow background
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Top Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Texts
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Daily Rewards",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Don't lose your streak",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),

                              // Day Badge
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
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
                            ],
                          ),

                          const SizedBox(height: 12),

                          // Progress Section
                          Row(
                            children: [
                              // Progress Bar
                              Expanded(
                                child: Container(
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: FractionallySizedBox(
                                    alignment: Alignment.centerLeft,
                                    widthFactor: 0.4, // progress amount
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(width: 10),

                              const Text(
                                "3/7 Days",
                                style: TextStyle(fontSize: 12),
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

      // Bottom Navigation
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0), // space from screen edges
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25), // rounded corners
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4), // shadow below the bar
                ),
              ],
            ),
            child: BottomNavigationBar(
              currentIndex: 0, // make sure to set the current selected tab
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
                    child: Image.asset('lib/Images/home-happy.png', width: 24),
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'lib/Images/Icon (1).png',
                    width: 24,
                    height: 24,
                  ),
                  label: "Rewards",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'lib/Images/Icon.png',
                    width: 24,
                    height: 24,
                  ),
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
