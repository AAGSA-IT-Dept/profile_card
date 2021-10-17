import 'package:flutter/material.dart';
import 'package:profile_card/profile_page.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  void rollDice() {
    // TODO : Implement dice rolling with random numbers from 1 to 6
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text('Rolling Dice'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset('assets/images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    rollDice();
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              // TODO : Implement Right Dice
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset('assets/images/dice1.png'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ),
          );
        },
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.red,
        ),
      ),
    );
  }
}
