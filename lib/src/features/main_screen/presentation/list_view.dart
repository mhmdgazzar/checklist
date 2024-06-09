import 'package:checklist/src/data/database_repository.dart';
import 'package:flutter/material.dart';

class ItemsListView extends StatefulWidget {
  final DatabaseRepository databaseRepository;
  const ItemsListView({super.key, required this.databaseRepository});

  @override
  State<ItemsListView> createState() => _ItemsListViewState();
}

class _ItemsListViewState extends State<ItemsListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder<List<String>>(
        future: widget.databaseRepository.getItems(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final itemsList = snapshot.data!;
            return ListView.builder(
              itemCount: itemsList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(itemsList[index]),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          await widget.databaseRepository
                              .removeItem(itemsList[index]);
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Column(
              children: [
                Icon(Icons.error),
                SizedBox(height: 16),
                Text('Error'),
              ],
            );
          } else {
            return const Padding(
              padding: EdgeInsets.all(24),
              child: Center(
                child: LinearProgressIndicator(
                  color: Colors.black,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
