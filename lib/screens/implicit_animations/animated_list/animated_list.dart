import 'package:flutter/material.dart';

class AnimatedListPage extends StatefulWidget {
  const AnimatedListPage({super.key});

  @override
  State<AnimatedListPage> createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _dmmyList = [];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated List",
        ),
        centerTitle: true,
      ),
      body: AnimatedList(
        key: _listKey,
        itemBuilder: (context, index, animation) {
          final eachItem = _dmmyList[index];
          return SizeTransition(
            sizeFactor: animation,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: Text(" $eachItem"),
                  trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          _dmmyList.removeAt(index);
                          _listKey.currentState?.removeItem(index,
                              duration: const Duration(seconds: 1),
                              (context, animation) {
                            return const Text("");
                          });
                        });
                      },
                      child: const Icon(Icons.delete)),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          setState(() {
            setState(() {
              _dmmyList.insert(0, "New Item: ${_dmmyList.length}");
              _listKey.currentState?.insertItem(0);

              print(_dmmyList.length);
            });
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
