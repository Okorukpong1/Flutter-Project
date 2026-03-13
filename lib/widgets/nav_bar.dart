import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          decoration: const BoxDecoration(
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
            currentIndex: currentIndex,
            onTap: onTap,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
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
                icon: Image(
                  image: AssetImage('assets/Icon (1).png'),
                  width: 24,
                ),
                label: "Rewards",
              ),
              BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/Icon.png'), width: 24),
                label: "Wallet",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
