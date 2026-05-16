import 'package:flutter/material.dart';
import '../../core/theme.dart';

class HomeV2 extends StatelessWidget {
  const HomeV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.warmIvory,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopHeader(),
            _buildDeliveryAddress(),
            _buildActiveSubscriptionCard(),
            _buildReferBanner(),
            _buildCategoriesGrid(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildTopHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 24, right: 24, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Namaste, Aarav 👋', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.deepForestGreen)),
              Text('Good Morning!', style: TextStyle(color: AppColors.textLight)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.notifications_outlined, color: AppColors.deepForestGreen),
              const SizedBox(width: 16),
              CircleAvatar(radius: 18, backgroundColor: AppColors.deepForestGreen, child: Icon(Icons.person, color: Colors.white, size: 20)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDeliveryAddress() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Icon(Icons.location_on, color: AppColors.antiqueGold),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Home (Work)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                Text('123, Green Acres, Jaipur - 302001', style: TextStyle(fontSize: 12, color: AppColors.textLight)),
              ],
            ),
          ),
          Text('Change', style: TextStyle(color: AppColors.deepForestGreen, fontWeight: FontWeight.bold, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildActiveSubscriptionCard() {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: AppColors.deepForestGreen, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('YOUR SUBSCRIPTION', style: TextStyle(color: AppColors.warmIvory.withOpacity(0.7), fontSize: 10, letterSpacing: 1.2)),
              Row(
                children: [
                  Icon(Icons.eco, color: AppColors.antiqueGold, size: 14),
                  const SizedBox(width: 4),
                  Text('Active', style: TextStyle(color: AppColors.antiqueGold, fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('A2 Cow Milk', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('1 Litre • Daily', style: TextStyle(color: Colors.white70, fontSize: 14)),
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
                child: Icon(Icons.opacity, color: Colors.white, size: 30),
              ),
            ],
          ),
          const Divider(height: 32, color: Colors.white24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSubDetail('Next Delivery', '18 May 2025'),
              _buildSubDetail('Time', '7:00 AM - 9:00 AM'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSubDetail(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.white54, fontSize: 10)),
        Text(value, style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildReferBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('REFER & EARN', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.deepForestGreen)),
                const SizedBox(height: 4),
                Text('Give 100% Pure Goodness. Earn Rewards!', style: TextStyle(fontSize: 12, color: AppColors.textLight)),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(color: AppColors.deepForestGreen, borderRadius: BorderRadius.circular(8)),
                  child: Text('REFER NOW', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Icon(Icons.card_giftcard, size: 60, color: AppColors.antiqueGold),
        ],
      ),
    );
  }

  Widget _buildCategoriesGrid() {
    final categories = [
      {'name': 'Milk', 'icon': Icons.opacity},
      {'name': 'Bilona Ghee', 'icon': Icons.bakery_dining},
      {'name': 'Curd', 'icon': Icons.waves},
      {'name': 'Paneer', 'icon': Icons.grid_view},
    ];
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('CATEGORIES', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.deepForestGreen)),
              Text('View All', style: TextStyle(color: AppColors.antiqueGold, fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 16, crossAxisSpacing: 16, childAspectRatio: 0.8),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                    child: Icon(categories[index]['icon'] as IconData, color: AppColors.deepForestGreen),
                  ),
                  const SizedBox(height: 8),
                  Text(categories[index]['name'] as String, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.deepForestGreen,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Products'),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'Subscriptions'),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
    );
  }
}
