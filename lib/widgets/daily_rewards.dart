import 'package:flutter/material.dart';

class DailyRewardsCard extends StatelessWidget {
  const DailyRewardsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    style: TextStyle(color: Color(0xFF5C6881), fontSize: 12),
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
                style: TextStyle(fontSize: 12, color: Color(0xFF5C6881)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
