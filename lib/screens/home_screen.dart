import 'package:begin_p/main.dart';
import 'package:flutter/material.dart';
import 'package:begin_p/models/category.dart';
class HomeScreen extends StatelessWidget {

   HomeScreen({Key? key}) : super(key: key);
  final List<Category> categories = [
    Category(id: 'today', name: 'Today'),
    Category(id: 'scheduled', name: 'Scheduled'),
    Category(id: 'all', name: 'All'),
    Category(id: 'flagged', name: 'Flagged')
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 16/9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(10),
              children:categories.map((e) => Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1A191D),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.email),
                          Text('0')
                        ],
                      ),
                      Text(e.name)
                    ],
                  ),
                ),
              )).toList()
            )),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add_circle),
                      label: const Text('New  Remainder')),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Add  List'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Edit',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
