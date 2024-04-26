import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  double screenhight = 0;
  double screenwidth = 0;
  bool startAnimation = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenhight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white30,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: screenwidth / 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "List",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 300 + (index * 100)),
                        transform: Matrix4.translationValues(
                            startAnimation ? 0 : screenwidth, 0, 0),
                        height: 55,
                        width: screenwidth,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Item List $index',
                              style: const TextStyle(fontSize: 18),
                            ),
                            const Icon(Icons.menu_open_rounded)
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
