import 'package:chat_app/screens/individual_chat_screen.dart';
import 'package:chat_app/widgets/chat_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
            Get.to(IndividualChatScreen());
            },
            child: ChatCard(
              username: 'Siam',
              profileImageUrl:
                  'https://i.pravatar.cc/150?img=1',
              subtext: 'hi',
            ),
          ),
          Divider(color: Color.fromARGB(255, 237, 237, 237),),
          ChatCard(
            username: 'Sagor',
            profileImageUrl: 'https://i.pravatar.cc/150?img=2',
            subtext: 'hi',
          ),
          Divider(color: Color.fromARGB(255, 237, 237, 237)),
           ChatCard(
            username: 'Karim',
            profileImageUrl: 'https://i.pravatar.cc/150?img=3',
            subtext: 'See you later!',
          ),
           Divider(color: Color.fromARGB(255, 237, 237, 237)),
        ],
      ),
    );
  }
}
