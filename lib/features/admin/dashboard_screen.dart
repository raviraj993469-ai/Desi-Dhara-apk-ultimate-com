import 'package:flutter/material.dart';
import '../../core/theme.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ADMIN CONSOLE')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStatGrid(),
            const SizedBox(height: 32),
            Text('Operations', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 16),
            _buildOperationTile(Icons.people, 'Customer Management', 'View and manage all users'),
            _buildOperationTile(Icons.assignment, 'Subscription Management', 'Active/Paused subscriptions'),
            _buildOperationTile(Icons.delivery_dining, 'Delivery Management', 'Routes and delivery boys'),
            _buildOperationTile(Icons.inventory, 'Inventory & Products', 'Manage stock and pricing'),
            _buildOperationTile(Icons.analytics, 'Revenue & Analytics', 'Financial reports'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatGrid() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.5,
      children: [
        _buildStatCard('Total Revenue', '₹ 4.2L', Icons.payments, Colors.green),
        _buildStatCard('Active Subs', '1,240', Icons.loop, Colors.blue),
        _buildStatCard('Daily Orders', '850', Icons.shopping_bag, Colors.orange),
        _buildStatCard('New Leads', '45', Icons.person_add, Colors.purple),
      ],
    );
  }

  Widget _buildStatCard(String label, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.creamWhite,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(height: 8),
          Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textLight)),
        ],
      ),
    );
  }

  Widget _buildOperationTile(IconData icon, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.creamWhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.deepForestGreen.withOpacity(0.1),
          child: Icon(icon, color: AppColors.deepForestGreen),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}
