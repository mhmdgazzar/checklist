import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        )),
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: const Text('Titles'),
                          trailing: IconButton(
                            icon: const Icon(Icons.info),
                            onPressed: () {},
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextField(),
                        const SizedBox(width: 8),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
