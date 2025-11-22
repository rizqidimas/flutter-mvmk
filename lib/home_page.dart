import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Container(
          height: 30,
          width: 150,
          color: Colors.grey[400],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
              width: 100,
              color: Colors.grey[600],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[600]!, width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 120,
                    color: Colors.grey[300],
                    margin: const EdgeInsets.only(bottom: 16),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 18,
                              width: double.infinity,
                              color: Colors.grey[300],
                              margin: const EdgeInsets.only(bottom: 8),
                            ),
                            Container(
                              height: 14,
                              width: 180,
                              color: Colors.grey[300],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 50,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: FractionallySizedBox(
                      widthFactor: 0.5,
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              height: 25,
              width: 100,
              color: Colors.grey[600],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/service-selection', arguments: 'laundry');
                    },
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey[400]!, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            height: 20,
                            width: 80,
                            color: Colors.grey[700],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/service-selection', arguments: 'iron');
                    },
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey[400]!, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            height: 20,
                            width: 80,
                            color: Colors.grey[700],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              height: 150,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[600]!, width: 2),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 12, color: Colors.grey[300], margin: const EdgeInsets.only(bottom: 4)),
                        Container(height: 12, width: 150, color: Colors.grey[300], margin: const EdgeInsets.only(bottom: 4)),
                        Container(height: 12, width: 120, color: Colors.grey[300], margin: const EdgeInsets.only(bottom: 12)),
                        Container(height: 10, width: 100, color: Colors.grey[300], margin: const EdgeInsets.only(bottom: 8)),
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 60,
                              color: Colors.grey[600],
                              margin: const EdgeInsets.only(right: 8),
                            ),
                            Container(
                              height: 35,
                              width: 60,
                              color: Colors.grey[600],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 120,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          if (index == 1) Navigator.pushNamed(context, '/laundry-basket');
          if (index == 2) Navigator.pushNamed(context, '/profile');
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(width: 30, height: 30, color: Colors.grey[400]),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(width: 30, height: 30, color: Colors.grey[400]),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(width: 30, height: 30, color: Colors.grey[400]),
            label: '',
          ),
        ],
      ),
    );
  }
}