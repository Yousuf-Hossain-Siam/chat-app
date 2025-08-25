import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String username;
  final String profileImageUrl;
  final String subtext;

  const ChatCard({
    super.key,
    required this.username,
    required this.profileImageUrl,
    required this.subtext,
  });

  // Helper to format current time as "hh:mm AM/PM"
  String _formatTime(DateTime time) {
    final hour = time.hour;
    final period = hour < 12 ? 'AM' : 'PM';
    final hour12 = hour % 12 == 0 ? 12 : hour % 12;
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour12:$minute $period';
  }

  @override
  Widget build(BuildContext context) {
    final currentTime = DateTime.now(); // Get current device time
    final formattedTime = _formatTime(currentTime);

    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(profileImageUrl),
        backgroundColor: Colors.grey[300],
      ),
      title: Text(
        username,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Row(
        children: [
          const Icon(Icons.done_all, color: Colors.blue, size: 16),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              subtext,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      trailing: Text(
        formattedTime,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
