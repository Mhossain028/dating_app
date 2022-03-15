import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../widgets/choice_button.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Draggable(
            child: UserCard(user: User.users[0]),
            feedback: UserCard(user: User.users[0]),
            childWhenDragging: UserCard(user: User.users[1]),
            onDragEnd: (drag){
              if(drag.velocity.pixelsPerSecond.dx < 0){
                print('Swiped left');
              }
              else{
                print('Swiped right');
              }
            },
          ),
          const SizedBox(height: 20),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ChoiceButton(
                  width: 60,
                  height: 60,
                  size: 25,
                  hasGradient: false,
                  color: Colors.blue,
                  icon: Icons.clear_rounded,
                ),
                ChoiceButton(
                  width: 80,
                  height: 80,
                  size: 30,
                  hasGradient: true,
                  color: Colors.white,
                  icon: Icons.favorite,
                ),
                ChoiceButton(
                  width: 60,
                  height: 60,
                  size: 25,
                  hasGradient: false,
                  color: Colors.blue,
                  icon: Icons.watch_later,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
