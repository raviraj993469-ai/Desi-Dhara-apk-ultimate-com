import 'package:flutter/material.dart';
import '../../core/theme.dart';

class DeliveryRouteScreen extends StatelessWidget {
  const DeliveryRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TODAY\'S ROUTE')),
      body: Column(
        children: [
          _buildSummary(),
          Expanded(child: _buildDeliveryList()),
        ],
      ),
    );
  }

  Widget _buildSummary() {
    return Container(
      padding: const EdgeInsets.all(24),
      color: AppColors.deepForestGreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildSummaryItem('Total', '45'),
          _buildSummaryItem('Delivered', '12'),
          _buildSummaryItem('Pending', '33'),
        ],
      ),
    );
  }

  Widget _buildSummaryItem(String label, String value) {
    return Column(
      children: [
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: AppColors.antiqueGold, fontSize: 12)),
      ],
    );
  }

  Widget _buildDeliveryList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(backgroundColor: AppColors.warmIvory, child: Icon(Icons.person, color: AppColors.deepForestGreen)),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Customer Name', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Flat 402, Heritage Heights', style: TextStyle(fontSize: 12, color: AppColors.textLight)),
                        ],
                      ),
                    ),
                    IconButton(icon: const Icon(Icons.call, color: Colors.green), onPressed: () {}),
                  ],
                ),
                const Divider(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('1L A2 Milk', style: TextStyle(fontWeight: FontWeight.w500)),
                    ElevatedButton(
                      onPressed: () {
                        // Show OTP confirmation dialog
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.deepForestGreen,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      ),
                      child: const Text('CONFIRM DELIVERY', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
