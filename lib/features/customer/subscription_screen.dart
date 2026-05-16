import 'package:flutter/material.dart';
import '../../core/theme.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MY SUBSCRIPTIONS')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          _buildActiveSubscription(),
          const SizedBox(height: 32),
          Text('Subscription Options', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16),
          _buildSubscriptionOption('Daily Delivery', 'Milk delivered every morning'),
          _buildSubscriptionOption('Alternate Days', 'Every other day delivery'),
          _buildSubscriptionOption('Custom Schedule', 'Select your own days'),
        ],
      ),
    );
  }

  Widget _buildActiveSubscription() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.creamWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.antiqueGold.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('A2 Cow Milk', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.green.withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
                child: const Text('ACTIVE', style: TextStyle(color: Colors.green, fontSize: 10, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text('1 Litre • Daily • Morning', style: TextStyle(color: AppColors.textLight)),
          const Divider(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildActionButton(Icons.pause, 'PAUSE', Colors.orange),
              _buildActionButton(Icons.edit, 'MODIFY', AppColors.deepForestGreen),
              _buildActionButton(Icons.history, 'HISTORY', AppColors.textLight),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color, size: 20),
        ),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 10, color: color, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildSubscriptionOption(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.creamWhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: AppColors.warmIvory,
            child: Icon(Icons.calendar_today, color: AppColors.antiqueGold, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle, style: const TextStyle(fontSize: 12, color: AppColors.textLight)),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: AppColors.antiqueGold),
        ],
      ),
    );
  }
}
