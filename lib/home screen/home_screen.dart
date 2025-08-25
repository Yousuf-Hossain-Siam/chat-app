import 'package:chat_app/controller/home_controller.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        final List<Tab> tabs = const [
          Tab(icon: Icon(Icons.chat), text: 'চ্যাট'),
          Tab(icon: Icon(Icons.group), text: 'গ্রুপ'),
          Tab(icon: Icon(Icons.call), text: 'কল'),
          Tab(icon: Icon(Icons.person), text: 'প্রোফাইল'),
        ];

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 31, 123, 78),
            title: const Text(
              'দোস্ত চ্যাটিং',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            actions: [
              const Icon(Icons.search, color: Colors.white),
              const SizedBox(width: 10),
              PopupMenuButton<String>(
                color: Colors.white,
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onSelected: (value) {
                  if (value == 'সেটিংস') {
                    // Handle settings
                  }
                },
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem(
                    value: 'নতুন গ্রুপ',
                    child: Text(
                      'নতুন গ্রুপ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'নতুন ব্রডকাস্ট',
                    child: Text(
                      'নতুন ব্রডকাস্ট',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'দোস্ত ওয়েব',
                    child: Text(
                      'দোস্ত ওয়েব',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'সেটিংস',
                    child: Text(
                      'সেটিংস',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
          
            ],
            bottom: TabBar(
              controller: controller.tabController,
              tabs: tabs,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // ✅ Use TabBarView to show content under tabs
          body: TabBarView(
            controller: controller.tabController,
            children: [
              // ✅ Show ChatScreen as a widget inside the tab
              const ChatScreen(), // Make sure ChatScreen doesn't have Scaffold/appBar
              Center(child: Text("গ্রুপ পেজ")),
              Center(child: Text("কল পেজ")),
              Center(child: Text("প্রোফাইল পেজ")),
            ],
          ),
        );
      },
    );
  }
}
