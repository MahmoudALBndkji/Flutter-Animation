// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AnimationListView extends StatelessWidget {
  const AnimationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animation Listview'),
      ),
      body: const CustemAnimatedList(),
    );
  }
}

class CustemAnimatedList extends StatefulWidget {
  const CustemAnimatedList({super.key});

  @override
  State<CustemAnimatedList> createState() => _CustemAnimatedListState();
}

class _CustemAnimatedListState extends State<CustemAnimatedList> {
  final List<String> items = [];
  final GlobalKey<AnimatedListState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AnimatedList(
            key: key,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
              return SlideTransition(
                position: animation.drive(Tween<Offset>(
                  begin: const Offset(1, 0), end:const Offset(0, 0)
                )),
                child: AnimatedListItem(
                  text: items[index],
                  onPressed: () {
                    deleteItem(index);
                  },
                ),
              );
            },
          ),
        ),
        TextButton(onPressed: insertItem, child: const Text('Add'))
      ],
    );
  }

  void insertItem() {
    var index = items.length;
    items.add('text ${index + 1}');
    key.currentState!.insertItem(index);
  }

  void deleteItem(int index) {
    items.remove(index);
    key.currentState!.removeItem(index, (context, animation) {
      return SizeTransition(
          sizeFactor: animation,
          child: AnimatedListItem(
            onPressed: () {},
            text: items[index],
          ));
    });
  }
}

class AnimatedListItem extends StatelessWidget {
  AnimatedListItem({super.key, required this.text, required this.onPressed});
  final String text;
  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.amber,
        ),
        title: Text(text),
        subtitle: const Text('sub title'),
        trailing: IconButton(onPressed: onPressed, icon: const Icon(Icons.delete)),
      ),
    );
  }
}



/*
  return SizeTransition(
                sizeFactor: animation,
                child: AnimatedListItem(
                  text: items[index],
                  onPressed: () {
                    deleteItem(index);
                  },
                ),
              );
 */