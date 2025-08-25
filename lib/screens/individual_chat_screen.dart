import 'package:flutter/material.dart';

class IndividualChatScreen extends StatelessWidget {
  const IndividualChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 106, 31),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        titleSpacing: -15, // Removes extra padding before title
        title: Row(
          children: [
            // Avatar
            CircleAvatar(
              radius: 20,
              backgroundImage: const NetworkImage(
                'https://i.pravatar.cc/150?img=1',
              ),
              backgroundColor: Colors.grey[300],
            ),
            const SizedBox(width: 12),

            // Name and Status
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Siam',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Last seen today at 4:30',
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
              ],
            ),
          ],

        ),
        actions: [Icon(Icons.more_vert, color: Colors.white,)],
        centerTitle: false,
      ),
      body: Container(), // Chat body will go here
    );
  }
}
