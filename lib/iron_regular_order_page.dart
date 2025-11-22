import 'package:flutter/material.dart';

class IronRegularOrderPage extends StatelessWidget {
  const IronRegularOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(12),
            color: Colors.grey[600],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40),
            color: Colors.grey[400],
            child: Center(
              child: Container(
                height: 40,
                width: 150,
                color: Colors.grey[700],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[400]!, width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildPriceRow(),
                    const SizedBox(height: 12),
                    _buildPriceRow(),
                    const SizedBox(height: 12),
                    _buildPriceRow(),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: 120,
                          color: Colors.grey[600],
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[400]!, width: 2),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      height: 20,
                      width: 80,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400]!, width: 2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          color: Colors.grey[700],
                        ),
                        Container(
                          height: 25,
                          width: 100,
                          color: Colors.grey[700],
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/qr-code');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      height: 120,
                      padding: const EdgeInsets.all(12),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(height: 10, color: Colors.grey[300], margin: const EdgeInsets.only(bottom: 3)),
                                Container(height: 10, width: 120, color: Colors.grey[300], margin: const EdgeInsets.only(bottom: 3)),
                                Container(height: 10, width: 100, color: Colors.grey[300], margin: const EdgeInsets.only(bottom: 8)),
                                Container(height: 8, width: 80, color: Colors.grey[300], margin: const EdgeInsets.only(bottom: 6)),
                                Row(
                                  children: [
                                    Container(height: 25, width: 45, color: Colors.grey[600], margin: const EdgeInsets.only(right: 6)),
                                    Container(height: 25, width: 45, color: Colors.grey[600]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 90,
                            color: Colors.grey[600],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
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

  Widget _buildPriceRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 20,
          width: 100,
          color: Colors.grey[600],
        ),
        Container(
          height: 20,
          width: 100,
          color: Colors.grey[700],
        ),
      ],
    );
  }
}