import 'package:flutter/material.dart';
import '../../core/theme.dart';

class AdminDashboardV2 extends StatelessWidget {
  const AdminDashboardV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.warmIvory,
      appBar: AppBar(
        title: const Text('ADMIN CONSOLE', style: TextStyle(letterSpacing: 2)),
        backgroundColor: AppColors.deepForestGreen,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome, Admin', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.deepForestGreen)),
            const SizedBox(height: 20),
            _buildQuickStats(),
            const SizedBox(height: 32),
            _buildRevenueChartPlaceholder(),
            const SizedBox(height: 32),
            const Text('TOP PRODUCTS', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
            const SizedBox(height: 16),
            _buildProductStat('Naturally Rich A2 Milk', '₹ 8,75,340', '45%'),
            _buildProductStat('Bilona Ghee', '₹ 4,25,120', '25%'),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickStats() {
    return Row(
      children: [
        _buildStatBox('1,240', 'Total Customers', Icons.people),
        const SizedBox(width: 16),
        _buildStatBox('850', 'Active Subs', Icons.loop),
      ],
    );
  }

  Widget _buildStatBox(String value, String label, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: AppColors.antiqueGold, size: 24),
            const SizedBox(height: 12),
            Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.deepForestGreen)),
            Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textLight)),
          ],
        ),
      ),
    );
  }

  Widget _buildRevenueChartPlaceholder() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: AppColors.deepForestGreen, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('REVENUE OVERVIEW', style: TextStyle(color: Colors.white70, fontSize: 10, letterSpacing: 1.2)),
          const Text('₹ 18,75,340', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColors.antiqueGold.withOpacity(0.1), AppColors.antiqueGold.withOpacity(0.3)],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(child: Text('Chart Illustration', style: TextStyle(color: Colors.white54))),
          ),
        ],
      ),
    );
  }

  Widget _buildProductStat(String name, String revenue, String percentage) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(revenue, style: const TextStyle(color: AppColors.textLight, fontSize: 12)),
            ],
          ),
          Text(percentage, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
