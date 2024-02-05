import 'package:carrot/screens/my_carrot/components/my_carrot_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('나의 당근'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings))
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          const SizedBox(height: 8.0),
          // MyCarrotMenu(iconMenuList: iconMenu1),
          const SizedBox(height: 8.0),
          // MyCarrotMenu(iconMenuList: iconMenu2),
          const SizedBox(height: 8.0),
          // MyCarrotMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
