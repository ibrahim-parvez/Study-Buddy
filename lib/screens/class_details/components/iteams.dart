import 'package:flutter/material.dart';
import 'package:foodly_ui/screens/chatbot/brAIny_chatbot.dart';
import 'package:foodly_ui/screens/chatbot/feynman_chatbot.dart';
import 'package:foodly_ui/screens/class_details/components/pomodoro.dart';
import 'package:foodly_ui/screens/class_details/components/flashcards.dart';
import '../../../constants.dart';


class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTabController(
          length: demoTabs.length,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: defaultPadding),
                child: Text(
                  "Study Tools",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              TabBar(
                isScrollable: true,
                unselectedLabelColor: titleColor,
                labelStyle: Theme.of(context).textTheme.titleLarge,
                onTap: (value) {
                  // you will get selected tab index
                },
                tabs: demoTabs,
              ),
              const SizedBox(height: defaultPadding),
              const SizedBox(
                height: 450, // Adjust height as needed
                child: TabBarView(
                  children: [
                    brAIny_ChatbotScreen(),
                    FeynmanChatbot(),
                    Flashcards(),
                    PomodoroTimer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

final List<Tab> demoTabs = <Tab>[
  const Tab(
    child: Text('AI Study Buddy'),
  ),
  const Tab(
    child: Text('Feynman Technique'),
  ),
  const Tab(
    child: Text('Flashcards'),
  ),
  const Tab(
    child: Text('Pomodoro Timer'),
  ),
];